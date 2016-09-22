
# first promt the user with the questions
# then create a hash
#have that hash have the infoin it link to user input
#ask for more info
#make a loop to add more info or they can type done when finished 

puts "What's is your name"
	name = gets.chomp
puts "What's your age"
	age = gets.chomp.to_i
puts "Where do you live?"
	location = gets.chomp
puts "Whats your phone number?"
	phone_number = gets.chomp
puts "Where do you plan to vacation?"
	vacation= gets.chomp
	
	
info_clients = {
	name: name,
	age: age,
	location: location,
	phone_number: phone_number,
	vacation: vacation
}
	
puts info_clients

puts "Would you like to continue(update or add info), if not type in 'done'"


puts "Would you like to continue(update or add info) press any key(or write yes, if not type in 'done'"
input = gets.chomp

while input != "done"

	puts "What type of info is it?:"
	type_info = gets.chomp.to_sym
	puts "Please type in the actual information"
	information = gets.chomp
	info_clients[type_info] = information
	puts info_clients
	puts "Click on any key to continue adding or type in 'done' when you finish"
	input = gets.chomp
end
