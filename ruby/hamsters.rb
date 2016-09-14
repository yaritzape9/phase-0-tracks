puts "What is your hamsters name?"
name = gets.chomp

puts "How loud is your hamster on a scale of 1 to 10?"
loud = gets.to_i

puts "What is your hamsters fur color"
color = gets.chomp

puts "Is your hamster a good candidate for adoption? yes or no?"

adoption = gets.chomp
	if adoption == "yes" 
		adoption = true 
	else 
		adoption = false 
	end 
	
puts "What is your hamsters estimated age"

age = gets.chomp
	if (age == "") 
		age = nil
	else 
		 age
	end

if (age == nil) 
	puts "Your hamsters name is #{name}. Your hamster on our scale is #{loud} loud. It is #{adoption} that your hamster is a good candidate for adoption. Your #{color} hamster is super cute!!"
	else 
		puts "Your hamsters name is #{name}. Your hamster on our scale is #{loud} loud. It is #{adoption} that your hamster is a good candidate for adoption. Your #{color} hamster is #{age} years old and super cute!!"
	end