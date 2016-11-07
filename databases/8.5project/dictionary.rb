
require 'sqlite3'

DBNAME = "Dictionary_info.db"

db = SQLite3::Database.new(DBNAME)

create_table_cmd = <<-SQL
	CREATE TABLE dictionary_phrases ( 
	id INTEGER PRIMARY KEY,
	spanish_phrase VARCHAR(255),
	english_phrase VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def store_phrases(db,spanish_phrase,english_phrase)
	db.execute("INSERT INTO dictionary_phrases (spanish_phrase,english_phrase) VALUES (?, ?, ?, ?)", [spanish_phrase,english_phrase])	
end

def edit_phrase

end

def delete_phrase

end

def view_all_phrases

end

##UI




