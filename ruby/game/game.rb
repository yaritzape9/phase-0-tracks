
# class guessinggame
# 	puts the welcome message to the user
# 	allows user input to get the word the other user is going to guess
#	store that word into a variable 
#	print a statement that says please guess a letter
# 	write a loop that allows a certain amount of guesses (that being the length of the word)..also going to need a counter
# 	the user will get feedback of there guesses in the example of ---- which will fill in the gaps if the answer a correct letter.

class GuessingGame
  attr_reader :guess_count
  attr_reader :is_over
  attr_reader :secret_word
  
  def initialize
  	@guess_count = 0
    @is_over = false
    @secret_word = secret_word
   end
   
   def check_word(index)
  	@guess_count += 1
	  	# if @s[index] == "ball"
	  	# 	@is_over = true
	  	# else
	  	# 	false
  		#end
  	end
end

 
# user interface

puts "Welcome to the Guess the word Game!"
game = GuessingGame.new

while !game.is_over
  puts "Please guess a letter"
  guess = gets.chomp.to_i
  if !game.check_word(guess - 1)
  	puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"