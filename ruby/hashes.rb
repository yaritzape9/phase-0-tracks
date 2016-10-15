#pseudocode
#Plan you next vacation 
#My program will prompt the user for their name,age, phone number, and where they prefer hot or cold weather
# I will then create an empty hash
#convert user data to apropriate data type
#store into hash
#ask user to review 
#then allow for an update, so ask if they would like to update anything
#if the user says none then quit the loop and they are done
#print latest version of hash , exit, then wish them a nice day


puts "Hello welcome to the vacation planner"
puts "are you excited to go on a adventure?"
puts "Please state your name"
name = gets.chomp
puts "What is your age?"
age = gets.to_i
puts "Give us your number"
number = gets.to_i
puts "Do you perfer hot weather?(true, false)"
weather = gets.chomp

vaca_hash = {
	name: name, 
	age: age, 
	number: number,
	weather: weather }

	p vaca_hash

	puts "Would you like to update(yes or none)?"
	continue = gets.chomp

		if continue == "none"
		else
			puts "please give me the name of the info you would like to update"
			info = gets.chomp
			update = info.to_sym
			puts "now what would you like to change #{info} to"
			change = gets.chomp

			vaca_hash[update] = change
		end
		p vaca_hash
