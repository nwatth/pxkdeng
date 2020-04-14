RSpec.describe Pxkdeng::Value do
  it "has an dictionary of card values" do
    expect(Pxkdeng::Value::CARD_VALUES).to eq({ "A" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10, "J" => 10, "Q" => 10, "K" => 10 })
  end

  describe "does get value of card" do
    it "returns 1 for A" do
      expect(described_class.get("A")).to eq(1)
    end

    it "returns 2 for 2" do
      expect(described_class.get("2")).to eq(2)
    end

    it "returns 3 for 3" do
      expect(described_class.get("3")).to eq(3)
    end

    it "returns 4 for 4" do
      expect(described_class.get("4")).to eq(4)
    end

    it "returns 5 for 5" do
      expect(described_class.get("5")).to eq(5)
    end

    it "returns 6 for 6" do
      expect(described_class.get("6")).to eq(6)
    end

    it "returns 7 for 7" do
      expect(described_class.get("7")).to eq(7)
    end

    it "returns 8 for 8" do
      expect(described_class.get("8")).to eq(8)
    end

    it "returns 9 for 9" do
      expect(described_class.get("9")).to eq(9)
    end

    it "returns 10 for 10" do
      expect(described_class.get("10")).to eq(10)
    end

    it "returns 10 for J" do
      expect(described_class.get("J")).to eq(10)
    end

    it "returns 10 for Q" do
      expect(described_class.get("Q")).to eq(10)
    end

    it "returns 10 for K" do
      expect(described_class.get("K")).to eq(10)
    end
  end
end
