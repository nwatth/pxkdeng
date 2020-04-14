RSpec.describe Pxkdeng::Game do
  let(:owner) { Pxkdeng::Player.new("owner") }
  let(:player) { Pxkdeng::Player.new("player_1") }
  let(:deck) { Pxkdeng::Deck.new }
  subject { described_class.new(owner, deck) }

  describe "#add_member" do
    context "game status is playing" do
      it "raise TooLate" do
        allow(subject).to receive(:status).and_return("playing")

        expect { subject.add_member(player) }.to raise_error(Pxkdeng::GameError::TooLate)
      end
    end
    it "add player to a game's members" do
      subject.add_member(player)

      expect(subject.members).to include(player)
    end
  end

  describe "#start" do
    it "draw 2 cards for each member" do
      subject.add_member(player)
      subject.start

      expect(owner.hand_cards.count).to eq(2)
      expect(player.hand_cards.count).to eq(2)
      expect(subject.deck.cards.count).to eq(48)
    end
  end

  describe "pxk?" do
    context "drawn cards'value is between 8,9" do
      it "return true" do
        allow(Pxkdeng::Value).to receive(:get).and_return(4)

        subject.start

        expect(subject.pxk?(owner)).to eq(true)
      end
    end

    context "drawn cards'value not between 8,9" do
      it "return true" do
        allow(Pxkdeng::Value).to receive(:get).and_return(10)

        subject.start

        expect(subject.pxk?(owner)).to eq(false)
      end
    end
  end
end
