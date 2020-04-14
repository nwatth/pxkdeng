module Pxkdeng
  class Player
    attr_reader :name, :hand_cards, :score

    def initialize(name)
      @name = name
      @hand_cards = []
      @score = 0
    end

    def update_score
      @score = hand_cards.sum{ |card| Pxkdeng::Value.get(card.rank) }
    end
  end
end
