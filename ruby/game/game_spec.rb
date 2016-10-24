require_relative 'game.rb'

describe GuessingGame do 
  let(:game) {GuessingGame.new}

  it "hides word" do
    expect(game.masked_word("hoi")).to eq "-" * 3
  end

end