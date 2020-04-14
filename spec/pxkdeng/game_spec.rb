RSpec.describe Pxkdeng::Game do
  let(:owner) { Pxkdeng::Player.new("owner") }
  let(:player) { Pxkdeng::Player.new("player_1") }
  subject { described_class.new(owner) }

  describe "#add_member" do
    it "add player to a game's members" do
      subject.add_member(player)

      expect(subject.members).to include(player)
    end
  end
end
