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
      #need new empty array and you have to loop through it and fill in the letter
    #have a determain game method which will tell you if you win or lose and also limits the amount of guesses you have
#maybe looking at some hangman games??
#google similiar games
class GuessingGame
  attr_reader :secret_word, :guesses, :game_status

  def initialize
    @secret_word = secret_word
    @guesses = []
    @hidden_word = ""
    @guess_counter = 0
    @game_status = false
  end

  def masked_word(guess)
    @secret_word = guess
    index = 0
    while index < @secret_word.length
        @hidden_word << "-"
        index += 1
    end
    @hidden_word
  end

  def guess_letter(guess)
    index = 0
    while index < @secret_word.length
      if @secret_word[index].include? guess
        @hidden_word[index] = guess
      end
      index += 1
    end
    @hidden_word
  end

  def determine_game
    if @hidden_word == @secret_word
      puts "You guessed the word!! Good job!"
      @game_status = true
    elsif @guess_counter >= @secret_word.length
      puts "You lost!"
      @game_status = true 
    else
      @game_status
      @guess_counter += 1  
    end
  end
end

# game = GuessingGame.new
# # # puts "guess a letter"
# # # guess = gets.chomp
# # puts game.masked_word("hello")
# # puts game.guess_letter("e")
#  puts "Hello! Welcome to guessing game. Where someone types in a word and you have to guess what it is."
#  puts "Enter your secret word!"
#  secret_word = gets.chomp.downcase
#  puts game.masked_word(secret_word)
# while !game.game_status
#   puts "Now guess a letter"
#   guess = gets.chomp  
#   puts game.guess_letter(guess)
#   game.determine_game
# end
