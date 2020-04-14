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
      @members << player
    end
  end
end
