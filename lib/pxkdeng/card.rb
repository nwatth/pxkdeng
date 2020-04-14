module Pxkdeng
  class Card
    attr_reader :rank, :suit

    def initialize(rank, suit)
      @rank = rank
      @suit = suit
    end

    def to_s
      "#{rank}(#{suit})"
    end

    def value
      return rank.to_i if rank.to_i > 0

      case rank
      when "A"
        1
      when "J"
        10
      when "Q"
        10
      when "K"
        10
      end
    end
  end
end
