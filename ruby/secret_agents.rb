#names: Yaritza Perez and Michael Silberstein
#Encrypt
#1.) start a certain index (that is 0)
#2.)everytime your method advances, the index of the current letter will change by adding one to its value
#3.) pass to the next letter
#4.)end the method when you hit a certain condition(when the word ends)

def encrypt(string_input)
	index = 0
	alphabet ="abcdefghijklmnopqrstuvwxyz" 
	while index < string_input.length
		#puts index
		#puts string_input.length
		#puts string_input[index]
		#puts string_input[index].next
		if string_input[index] == alphabet[-1]
			string_input[index] = alphabet[0]
			index += 1
		else
			string_input[index] = string_input[index].next
			index += 1
		end
	end
	p string_input
end

#decrypt
#1.)start a certain index (that is 0)
#2.)everytime your method advances the index of the current letter will change by subtracting one to its value
#3.) pass to the next letter
#4.)end the method when you hit a certain condition(when the word ends)


def decrypt(string_input)
	index = 0
	alphabet ="abcdefghijklmnopqrstuvwxyz" 
	while index < string_input.length
		#puts index
		#puts string_input.length
		#puts string_input[index]
		#puts string_input[index].next
		if string_input[index] == alphabet[0]
			string_input[index] = alphabet[-1]
			index += 1
		else
			string_input[index] = (string_input[index].chr.ord - 1).chr
			#puts string_input[index]
			index += 1
		end
	end
	p string_input
end

#=encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")


#Version 5 pseudocode
#1) Request user input to determine 'encrypt' or 'decrypt' method
#2) Ask the user for a password
#3) Apply the method that was requested by the user
#4) Print the results of that method.

puts "Would you like to decrypt or encrypt a password?"
user_method = gets.chomp
puts "OK, what password would you like to #{user_method}"
user_password = gets.chomp

if user_method == "decrypt"
 decrypt(user_password)
elsif user_method == "encrypt"
 encrypt(user_password)
else user_method = "both"
	decrypt(encrypt(user_password))
end