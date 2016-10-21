module Shout
 # 	def self.yell_angrily(words)
 #    	words + "!!!" + " :("
 #  	end

 # 	def self.yelling_happily(word)
	# 	word + " :D!!!"
	# end

	def plays(fetch)
		puts "plays #{fetch} with favorite dog *smiles* and *pets dog*"
	end

	def screams(words)
		puts "#{words}!!!! *CROSSES ARMS*"
	end
end
 
 class Annoying_brother
	include Shout
end

class Loving_dog
	include Shout
end
# p Shout.yell_angrily("hey")
# p Shout.yelling_happily("hallo")
 brother =  Annoying_brother.new
 	brother.screams("YOU ARE SO ANNOYING. LEAVE ME ALONE")
 dog = Loving_dog.new
 	dog.plays("running")
