
puts "Hi possible future employee(s)!"
puts "how many employees will be processed"
until employees = 0 
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

if secret_info_for_boss = "Definitely a vampire."
	puts "THEY ARE A VAMPIRE GET THEM OUT BOSS"
elsif secret_info_for_boss = "Almost certainly a vampire."
	puts "Im not 100percent positive  boss but I'M 99.99percent SURE they're a vampire"
elsif secret_info_for_boss = "Probably a vampire."
	puts "They are probably vampire but im not that certain!"
elsif secret_info_for_boss = "Probably not a vampire."
	puts "Ehhh I don't see them being a vampire boss."
else secret_info_for_boss = "Results inconclusive."
	puts "Uhhhh I'm not to sure because the answers were everywhere sooo yea I don't know boss"
end




