module Pxkdeng
  class Deck
    RANKS = %w[A 2 3 4 5 6 7 8 9 10 J Q K].freeze
    SUITS = %w[Spades Hearts Diamonds Clubs].freeze

    attr_reader :cards

    def initialize
      @cards = RANKS.product(SUITS)
        .map{ |rank, suit| Card.new(rank, suit) }
        .shuffle
    end
  end
end
