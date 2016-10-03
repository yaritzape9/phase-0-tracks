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
  attr_reader :secret_word, :is_over, :guesses, :word_array,:hidden_word, :tries_of_guesses
  def initialize(secret_word)
    @secret_word = secret_word
    @is_over = false
    @guesses = []
    @word_array = @secret_word.split("")
    @tries_of_guesses = @word_array.length
    @hidden_word = "-" * @word_array.length
    @correct_array = []
  end

  def letter_guess(guess)
    @tries = guess 
    if !@guesses.include?(guess)
    @guesses << guess
    @tries_of_guesses -= 1
    end   
  end

  def word_hider(guess)
    new_hidden_word = []
    @word_array.each do |letter|
      if letter == @tries
        @correct_array << letter 
        new_hidden_word << letter
      elsif @correct_array.include?(letter)
        new_hidden_word << letter
      else
        new_hidden_word << "-"
      end
    end
#   @hidden_word = new_hidden_word
#   p new_hidden_word
      @hidden_word = new_hidden_word.join
    p new_hidden_word.join
  end

  def determain_game
    if @hidden_word == @secret_word
      puts"You guessed #{@secret_word}!!Great job! You know your stuff"
      @is_over = true
      puts "You won in #{guesses.count} guesses!"
    elsif @tries_of_guesses == 0
      puts "The word was #{@secret_word}? You couldn't guess it! Better luck next time"
      @is_over = true
      puts "You lost in #{sguesses.count} guesses!"
    else
      @is_over = false
    end
  end
end


puts "Welcome to the Guess the word Game!"
puts "What word would you like your oppnent to guess??"
secret_word = gets.chomp.downcase
game = GuessingGame.new(secret_word)
puts "Your word has this many letters. That is also the amount of tries you get! So guess carefully"
puts "#{game.hidden_word}"
while !game.is_over
  puts "Guess a letter."
  guess = gets.chomp
  game.letter_guess(guess)
  game.word_hider(guess)
  game.determain_game
end


