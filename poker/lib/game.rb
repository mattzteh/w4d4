require_relative "deck"

class Game

    def initialize
        @deck = Deck.new
        @deck.shuffle
    end
    
end