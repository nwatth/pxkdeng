RSpec.describe Pxkdeng::Card do
  subject { described_class.new("A", "Spades") }

  it { is_expected.to have_attributes(rank: "A") }
  it { is_expected.to have_attributes(suit: "Spades") }

  it "has a printable ability" do
    expect(subject.to_s).to eq("A(Spades)")
  end
end
