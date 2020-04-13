RSpec.describe Pxkdeng::Deck do
  subject { described_class.new }

  it "has 52 cards" do
    expect(subject.cards.length).to eq(52)
  end

  it "does shuffle" do
    expect(subject.cards.first).not_to eq(subject.shuffle!.first)
  end
end
