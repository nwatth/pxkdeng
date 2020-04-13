RSpec.describe Pxkdeng::Player do
  subject { described_class.new("Watt") }

  it "has a name" do
    expect(subject.name).to eq("Watt")
  end

  it "does not initially have a hand" do
    expect(subject.hand_cards).to be_empty
  end

  it "has a score begin with 0" do
    expect(subject.score).to eq 0
  end
end
