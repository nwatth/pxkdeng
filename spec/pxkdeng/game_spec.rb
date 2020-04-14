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
end
