
 puts "Hello please enter your first and last name!"
 puts "We will have your alter ego name ina jiffy"
 name = gets.chomp

 alter_name = name.split.each_slice(1).map{|a|a.join ' '}
 puts alter_name.reverse

		  index = 0 
		  vowels = "aeiou"
		   while index < alter_name.length
			  	if alter_name[index] == vowels[-1]
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
			p string

			index = 0 
				  alphabet = "abcdefghijklmnopqrstuvwxyz"
				  while index < string.length
				  	# puts index
				  	# puts string.length
				  	# puts string
				  	# puts string[index].next
					  	if string[index] == alphabet[-1]
					  		string[index] = alphabet[0]
					  		index += 1
					  	else 
					  		string[index] = string[index].next
					  		index += 1
					  	end
					  p string
					end
		

