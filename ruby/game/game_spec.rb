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

require_relative 'game'
describe GuessingGame do 
  let(:game) { GuessingGame.new("hel")}

  it "hides word" do
    expect(game.word_hider("hel")).to eq "-" * 3
  end
  
  it "checks if the letter you guessed is right" do
    game.letter_guess("h")
    expect(game.word_hider("h")).to eq "h--"
  end
end