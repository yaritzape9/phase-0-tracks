# pseudo code
# first off  we want to say hi to the user and ask them questions
# second off we want to take this and figure out how to go through the string and only change the vowels with a method
# third we want to come up with a method that goes through the string agai but changes the consonant
# 4th we want to build our data structure
# 5th we add in the correct syntax to adding more into the data structure
# 6th we firgure out how to make the string an array and flip the two indexes so the first and last name is switched.
# lastly call the method to try it out
#trying to make everything into one method
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

#data structure
fake_name = {
    secretagent_one: {
        full__realname: 'Felicia torrez',
        fake_name: 'Vussit Gimodoe'
    }

puts "well thanks for using our program, "
input = gets.chomp
if input == ''
	 fake_name[secretagent][full__realname] = name.to_sym
 	 fake_name[secretagent][full__realname]= altername.to_sym
end

 alter_name = string.split.each_slice(1).map{|a|a.join ' '}
 puts alter_name.reverse

end

vowel("felicia torrez")


#everything individually
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


#       data structure
# fake_name = {
#     secretagent_one: {
#         full__realname: 'Felicia torrez',
#         fake_name: 'Vussit Gimodoe'
#     }
    
# puts "well thanks for using our program, "
# input = gets.chomp
# if input == ''
# 	 fake_name[secretagent][full__realname] = name.to_sym
#  	 fake_name[secretagent][full__realname]= altername.to_sym
# end


# 	alter_name = string.split.each_slice(1).map{|a|a.join ' '}
#  puts alter_name.reverse
#  fake_name[secretagent][full__realname] = name.to_sym
#  fake_name[secretagent][full__realname]= altername.to_sym


