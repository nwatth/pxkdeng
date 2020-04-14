module Pxkdeng
  class Game
    STATUS = %w(waiting playing finished)

    attr_reader :owner, :members, :deck, :status, :drawn_cards

    def initialize(owner, deck)
      @owner = owner
      @deck = deck
      @members = [@owner]
      @status = STATUS[0]
      @drawn_cards = []
    end

    def add_member(player)
      raise GameError::TooLate, "A game has already started" if status == STATUS[1]

      @members << player
    end
    

    def start
      status = STATUS[1]

      2.times do
        @members.each do |member|
          draw_card(member, deck)
        end
      end
    end

    def draw_card(member, deck)
      drawn_cards << [member, deck.cards.pop]
    end

    def member_cards(member)
      @drawn_cards.select{ |drawn_card| drawn_card[0] == member }
    end

    def pxk?(member)
      member_cards(member).sum{ |card| card[1].value }.between?(8,9)
    end
  end

  module GameError
    class TooLate < StandardError; end
  end
end
