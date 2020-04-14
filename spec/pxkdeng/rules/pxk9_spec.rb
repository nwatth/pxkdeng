RSpec.describe Pxkdeng::Rules::Pxk9 do
  context "when summary of 2 cards is equal 9" do
    describe "has validate 9 and 10" do
      let(:card_1) { Pxkdeng::Card.new("9", "Spades") }
      let(:card_2) { Pxkdeng::Card.new("10", "Diamonds") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_truthy
      end
    end

    describe "has validate 7 and 2" do
      let(:card_1) { Pxkdeng::Card.new("7", "Clubs") }
      let(:card_2) { Pxkdeng::Card.new("2", "Hearts") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_truthy
      end
    end

    describe "has validate 8 and A" do
      let(:card_1) { Pxkdeng::Card.new("8", "Clubs") }
      let(:card_2) { Pxkdeng::Card.new("A", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_truthy
      end
    end

    describe "has validate K and 9" do
      let(:card_1) { Pxkdeng::Card.new("K", "Spades") }
      let(:card_2) { Pxkdeng::Card.new("9", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_truthy
      end
    end

    describe "has validate 3 and 6" do
      let(:card_1) { Pxkdeng::Card.new("3", "Diamonds") }
      let(:card_2) { Pxkdeng::Card.new("6", "Hearts") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_truthy
      end
    end
  end

  context "when summary of 2 cards is not equal 9" do
    describe "has validate 9 and 9" do
      let(:card_1) { Pxkdeng::Card.new("9", "Spades") }
      let(:card_2) { Pxkdeng::Card.new("9", "Diamonds") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_falsey
      end
    end

    describe "has validate 3 and 2" do
      let(:card_1) { Pxkdeng::Card.new("3", "Clubs") }
      let(:card_2) { Pxkdeng::Card.new("2", "Hearts") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_falsey
      end
    end

    describe "has validate 8 and 7" do
      let(:card_1) { Pxkdeng::Card.new("8", "Clubs") }
      let(:card_2) { Pxkdeng::Card.new("7", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_falsey
      end
    end

    describe "has validate K and K" do
      let(:card_1) { Pxkdeng::Card.new("K", "Spades") }
      let(:card_2) { Pxkdeng::Card.new("K", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_falsey
      end
    end

    describe "has validate 3 and A" do
      let(:card_1) { Pxkdeng::Card.new("3", "Diamonds") }
      let(:card_2) { Pxkdeng::Card.new("A", "Hearts") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2])).to be_falsey
      end
    end
  end

  context "when 3 cards" do
    describe "has validate 2, 9 and 3" do
      let(:card_1) { Pxkdeng::Card.new("2", "Spades") }
      let(:card_2) { Pxkdeng::Card.new("9", "Diamonds") }
      let(:card_3) { Pxkdeng::Card.new("3", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2, card_3])).to be_falsey
      end
    end

    describe "has validate A, 2 and K" do
      let(:card_1) { Pxkdeng::Card.new("A", "Clubs") }
      let(:card_2) { Pxkdeng::Card.new("2", "Hearts") }
      let(:card_3) { Pxkdeng::Card.new("K", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2, card_3])).to be_falsey
      end
    end

    describe "has validate 8, 3 and A" do
      let(:card_1) { Pxkdeng::Card.new("8", "Clubs") }
      let(:card_2) { Pxkdeng::Card.new("3", "Hearts") }
      let(:card_3) { Pxkdeng::Card.new("A", "Diamonds") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2, card_3])).to be_falsey
      end
    end

    describe "has validate 3, K, 3" do
      let(:card_1) { Pxkdeng::Card.new("3", "Diamonds") }
      let(:card_2) { Pxkdeng::Card.new("K", "Clubs") }
      let(:card_3) { Pxkdeng::Card.new("3", "Clubs") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2, card_3])).to be_falsey
      end
    end

    describe "has validate K, A, and 9" do
      let(:card_1) { Pxkdeng::Card.new("K", "Spades") }
      let(:card_2) { Pxkdeng::Card.new("A", "Clubs") }
      let(:card_3) { Pxkdeng::Card.new("9", "Diamonds") }

      it "returns true" do
        expect(described_class.valid?([card_1, card_2, card_3])).to be_falsey
      end
    end
  end
end
