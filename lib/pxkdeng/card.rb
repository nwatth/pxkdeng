module Pxkdeng
  class Card
    attr_reader :rank, :suit, :index

    def initialize(rank, suit, index = nil)
      @rank = rank
      @suit = suit
      @index = index
    end

    def to_s
      "#{rank}(#{suit})"
    end
  end
end
