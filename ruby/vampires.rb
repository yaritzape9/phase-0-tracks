#What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
#How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
#our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
#Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.


puts "Hi possible future employee!"
puts "What is your name?"
	name = gets.chomp
puts "How old are you? What year were you born?"
	age= gets.chomp
	year = gets.chomp.to_i
		if age == ""
			puts "Can I ask you some more questions?"
			age = nil
		elsif age = (2016 - year)
			 age = false
			 puts "hmm really? thats interesting can I ask you some more questions?"
		else 
			puts "Cool let me ask you some questions"
		end


puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
	input= gets.chomp
		if input == "y"
			bread = true 
		else 
			bread = false 
		end 

puts "Would you like to enroll in the company’s health insurance?(y/n)"
	input= gets.chomp
		if input == "y" 
			insurance = true 
		else 
			insurance = false 
		end 

if name == "Drake Cula" || name = "Tu Fang"
	secret_info_for_boss = "Definitely a vampire."
elsif (age == nil || age == false) && !bread && !insurance
	secret_info_for_boss ="Almost certainly a vampire."
elsif !age && (!bread || !insurance)
	secret_info_for_boss = "Probably a vampire."
elsif age && (bread || insurance)
	secret_info_for_boss = "Probably not a vampire."
else 
	secret_info_for_boss = "Results inconclusive."
end
