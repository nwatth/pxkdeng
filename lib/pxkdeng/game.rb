module Pxkdeng
  class Game
    STATUS = %w(waiting playing finished)

    attr_reader :owner, :members, :deck, :status

    def initialize(owner, deck)
      @owner = owner
      @deck = deck
      @members = [@owner]
      @status = STATUS[0]
    end

    def add_member(player)
      raise GameError::TooLate, "A game has already started" unless status == STATUS[0]

      @members << player
    end
    

    def start
      status = STATUS[1]

      2.times do
        @members.each do |member|
          draw_card(member, deck)
          member.update_score
        end
      end
    end

    def draw_card(member, deck)
      card = deck.cards.pop
      member.hand_cards << card

      # after_draw_card(member, card) if self.respond_to?(:after_draw_card)
    end

    def pxk?(member)
      member.score.between?(8,9)
    end

    # def after_draw_card(member, card)
    #   pust "#{member.name}"
    # end
  end

  module GameError
    class TooLate < StandardError; end
  end
end
