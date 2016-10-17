def reverse_str(string)
	new = string.split(" ")
	i = 0
	new[i], new[i+1] = new[i+1],new[i] 
	new_name = new.join(" ")
	new_name.downcase
	
end
# p reverse_str("Felicia Torrez")

def vowel_changer(vowel)
  index = 0 
  vowels_in_string = "aeiou"
    while index < vowel.length
	  	if vowel[index] == vowels_in_string[-1]
	  		vowel[index] = vowels_in_string[0]
	  		index += 1
	  	elsif vowel[index] == " "
  			vowel[index] = " "
  			index += 1
	  	elsif vowel[index] == "a" || vowel[index] == "e" || vowel[index] =="i" || vowel[index] == "o" || vowel[index] =="u"
	  		vowel[index] = vowels_in_string[vowels_in_string.index(vowel[index]) + 1] 
	  		index += 1
	  	else 
	  		vowel[index]
	  		index += 1
	  	end
	end
	  vowel
	end
# vowel_changer("a")

def constant_changer(string)
	index = 0 
	alpha = "bcdfghjklmnpqrstvwxyz"
	while index < string.length
		if string[index] == alpha[-1]
			string[index] = alpha[0]
		elsif string[index] == " "
			string[index] = " "
		elsif alpha.include? string[index]
			string[index] = alpha[alpha.index(string[index]) + 1]
		else 
			string[index]
		end
		index += 1
	end
	string
end

 def print(string)
 	reverse = reverse_str(string)
 	vowel = vowel_changer(reverse)
 	constant_changer(vowel)
 end
 hash= {}

puts "Hello enter your first and last name!"
  puts "Then we will have your alter ego name ina jiffy"
    name = gets.chomp
    puts "Your new name is:"
p print(name)

while name != "exit" 
	puts "Would you like another alter ego name??If so enter name or exit"
	changed_name = print(name)
	hash[name] = changed_name
	# p hash
	name = gets.chomp
	 # p hash
	 if name == "exit"
	
	 else
	 	puts "your new name is:"
	 	p print(name)
	 end

end
p hash

