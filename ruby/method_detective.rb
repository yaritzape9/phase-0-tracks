# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 p "iNvEsTiGaTiOn".swapcase
 #overwite ! but does same thing
 p "iNvEsTiGaTiOn".swapcase!
		# => “InVeStIgAtIoN”


puts("----------------------")

 p "zom".insert(1,'o')
		# => “zoom”

puts("---------------------------")

  p "enhance".center(20)
		# => "    enhance    "

puts("---------------------------")

 p "Stop! You’re under arrest!".upcase
		# => "STOP! YOU’RE UNDER ARREST!"

puts("---------------------------")

 p "the usual".insert(9,' suspects')
		#=> "the usual suspects"
 a = "the usual" 
 a << " suspects"
 p a.concat('')

puts("------------------------------")

 p " suspects".prepend('the usual')
		# => "the usual suspects"

puts("----------------------------------------")

 p "The case of the disappearing last letter".chomp("r")
 p "The case of the disappearing last letter".chop
		# => "The case of the disappearing last lette"

puts("----------------------------------------")

 p "The mystery of the missing first letter".delete("T")
		# => "he mystery of the missing first letter"

puts("----------------------------------------")

 p "Elementary,    my   dear        Watson!".squeeze

		# => "Elementary, my dear Watson!"

puts("----------------------------")
 p "z".bytes
 #or
 p "z".ord #turns character to a number
		# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#the amount of bytes 122 has

puts("----------------------")

 p "How many times does the letter 'a' appear in this string?".count("a")
 p "How many times does the letter 'a' appear in this string?".scan(/a/).length

		# => 4