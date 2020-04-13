module Pxkdeng
  class Player
    attr_reader :name, :hand_cards, :score

    def initialize(name)
      @name = name
      @hand_cards = []
      @score = 0
    end
  end
end
