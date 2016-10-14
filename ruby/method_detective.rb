# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".<??>
	# => “InVeStIgAtIoN”
	
puts "zom".<??>
# => “zoom”

puts "enhance".<??>
# => "    enhance    "

puts "Stop! You’re under arrest!".<??>
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".<??>
#=> "the usual suspects"

puts " suspects".<??>
# => "the usual suspects"

puts "The case of the disappearing last letter".<??>
puts "The case of the disappearing last letter".<??>
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".<??>
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".<??>
# => "Elementary, my dear Watson!"

puts "z".<??>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 in relation with the character z, is that 122 is the number of bytes within the string z.

puts "How many times does the letter 'a' appear in this string?".<??>
# => 4