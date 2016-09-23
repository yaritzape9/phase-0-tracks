def vowel(string)
	 puts "Hello please enter your first and last name!"
 puts "We will have your alter ego name ina jiffy"
 name = gets.chomp
  index = 0 
  vowels = "aeiou"
   while index < string.length
	  	if string[index] == vowels[-1]
	  		string[index] = vowels[0]
	  		index += 1
	  	elsif string[index] == " "
  			string[index] = " "
  			index += 1
	  	elsif string[index] == "a" || string[index] == "e" || string[index] =="i" || string[index] == "o" || string[index] =="u"
	  		string[index] = string[index].next!
	  		index += 1
	  	else 
	  		string[index]
	  		index += 1
	  	end
	end

	index_two = 0 
  alphabet = "bcdfghjklmnpqrstvwxyz"
  while index_two < string.length
  	# puts index_two
  	# puts string.length
  	# puts string
  	# puts string[index_two].next
	  	if string[index_two] == alphabet[-1]
	  		string[index_two] = alphabet[0]
	  		index_two += 1
	  	elsif string[index_two] != "a" || string[index] != "e" || string[index] !="i" || string[index] != "o" || string[index] !="u"
	  		string[index_two] = string[index_two].next
	  		index_two += 1
	  	else
	  	end
	  p string
	end

	alter_name = string.split.each_slice(1).map{|a|a.join ' '}
 puts alter_name.reverse
	
end

vowel("felicia torrez")

# 	 puts "Hello please enter your first and last name!"
#  puts "We will have your alter ego name ina jiffy"
#  name = gets.chomp

# def vowel(string)
#   index = 0 
#   vowels = "aeiou"
#    while index < string.length
# 	  	if string[index] == vowels[-1]
# 	  		string[index] = vowels[0]
# 	  		index += 1
# 	  	elsif string[index] == " "
#   			string[index] = " "
#   			index += 1
# 	  	elsif string[index] == "a" || string[index] == "e" || string[index] =="i" || string[index] == "o" || string[index] =="u"
# 	  		string[index] = string[index].next!
# 	  		index += 1
# 	  	else 
# 	  		string[index]
# 	  		index += 1
# 	  	end
# 	end
# 	  p string
# 	end



# def consan(string)
#   index = 0 
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
#   while index < string.length
#   	puts index
#   	puts string.length
#   	puts string
#   	puts string[index].next
# 	  	if string[index] == alphabet[-1]
# 	  		string[index] = alphabet[0]
# 	  		index += 1
# 	  	else 
# 	  		string[index] = string[index].next
# 	  		index += 1
# 		end
#		end
# => p string
#	end

 

