module Pxkdeng
  class Game
    STATUS = %w(waiting playing finished)

    attr_reader :owner, :members, :deck, :status

    def initialize(owner, deck)
      @owner = owner
      @members = [@owner]
      @status = STATUS[0]
    end

    def add_member(player)
      raise GameError::TooLate, "A game has already started" if status == STATUS[1]

      @members << player
    end
  
  end

  module GameError
    class TooLate < StandardError; end
  end
end
