module Pxkdeng
  class Deck
    RANKS = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
    SUITS = %w[Spades Hearts Diamonds Clubs]

    attr_reader :cards

    def initialize
      @cards = RANKS.product(SUITS)
      shuffle!
    end

    def shuffle!
      @cards.shuffle!
    end
  end
end
