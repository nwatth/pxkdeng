module Pxkdeng
  module Rules
    class Pxk9
      def self.valid?(cards)
        return false unless cards.size == 2

        cards.sum { |card| Pxkdeng::Value.get(card.rank) } % 10 == 9
      end
    end
  end
end
