
# class guessinggame
  #UI
    #   puts the welcome message to the user
    #   allows user input to get the word the other user is going to guess
    # store that word into a variable 
    # print a statement that says please guess a letter
    #   write a loop that allows a certain amount of guesses (that being the length of the word)
  #Methods
    #initialize the variables im going to use
    #have a guess method that checks if the letter you guessed is correct
    #Have a hidden word method that hides the word 
      #   the user will get feedback of there guesses in the example of ---- which will fill in the gaps if the answer a correct letter.
    #have a determain game method which will tell you if you win or lose and also limits the amount of guesses you have
class GuessingGame
  attr_reader :guess_count
  attr_reader :is_over
  attr_reader :secret_word
  
  def initialize
    @guess_count = 0
    @is_over = false
    @secret_word = secret_word
   end
   
  def letter_guess(guess)
    @tries = guess 
    if !@guesses.include?(guess)
    @guesses << guess
    @tries_of_guesses -= 1
    end   
  end

 
# user interface

puts "Welcome to the Guess the word Game!"

puts "What word would you like your oppnent to guess??"
 secret_word = gets.chomp.downcase
 game = GuessingGame.new(secret_word)


while !game.is_over
  puts "Please guess a letter"
  guess = gets.chomp.to_i
  if !game.check_word(guess - 1)
    puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"
