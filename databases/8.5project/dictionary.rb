require 'sqlite3'

DBNAME = "Dictionary_info.db"

db = SQLite3::Database.new(DBNAME)
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS dictionary_phrases ( 
	id INTEGER PRIMARY KEY,
	spanish_phrase VARCHAR(255),
	english_phrase VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def store_phrases(db,spanish_phr, translated_phrase)
	db.execute("INSERT INTO dictionary_phrases (spanish_phrase,english_phrase) VALUES (?, ?)", [spanish_phr,translated_phrase])	
end

def delete_phrase(db, user_input)
	db.execute("DELETE FROM dictionary_phrases WHERE spanish_phrase = ?", [user_input])
end

def view_all_phrases(db)
	all_phrases = db.execute("SELECT * FROM dictionary_phrases")
	all_phrases.each do |phrase|
		puts "Your spanish phrase: #{phrase['spanish_phrase']} \n Translated phrase: #{phrase['english_phrase']}"
	end
end

def edit_phrase (db, attribute, newphrase)
	db.execute("UPDATE dictionary_phrases SET spanish_phrase = ? WHERE spanish_phrase = '#{attribute}'",[newphrase])
end
def edit_translation(db, attribute, newtranslation)
	db.execute("UPDATE dictionary_phrases SET english_phrase = ? WHERE english_phrase ='#{attribute}'", [newtranslation])
end
##UI
puts "Hello!! Welcome to your online personal dictionary!! Here you can store all the new spanish phrases you learn."
puts "This way you can keep track of all the phrases you learn and read over them when you need to! Now lets get started."
puts "You can type in 'phrase' to add in a new phrase,'delete' to erase a phrase,'edit' to edit,to view all your phrases type in 'view'. Please type everything exactly"
choice = gets.chomp

if choice == "phrase"
	puts "What is your spanish phrase?"
	spanish_phr = gets.chomp
	puts "Now type in the translation"
	translated_phrase = gets.chomp
	store_phrases(db,spanish_phr, translated_phrase)
elsif choice == "delete"
	puts "Whats phrase would you like to delete?"
	phrase = gets.chomp
	delete_phrase(db, phrase) 
elsif choice == 'edit'
	puts "What phrase would you like to change. Type in full phrase"
	fullphrase = gets.chomp
	puts 'What is the old translation'
	old_translation = gets.chomp
	puts "Please type in new edited phrase"
	edited_phrase = gets.chomp
	puts "Now type in new definition"
	new_def = gets.chomp
	edit_phrase(db,fullphrase,edited_phrase)
	edit_translation(db, old_translation, new_def)
elsif choice == "view"
	view_all_phrases(db)
else 
	puts "alright goodbye"
end