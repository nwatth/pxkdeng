RSpec.describe Pxkdeng::Deck do
  subject { described_class.new }

  it "has an array of ranks" do
    expect(Pxkdeng::Deck::RANKS).to eq(["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"])
  end

  it "has an array of suits" do
    expect(Pxkdeng::Deck::SUITS).to eq(["Spades", "Hearts", "Diamonds", "Clubs"])
  end

  it "initialize with a full deck of 52 cards" do
    expect(subject.cards.length).to eq(52)
  end
end
