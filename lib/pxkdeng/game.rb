module Pxkdeng
  class Game
    attr_reader :owner, :members

    def initialize(owner)
      @owner = owner
      @members = [@owner]
    end

    def add_member(player)
      @members << player
    end
  end
end
