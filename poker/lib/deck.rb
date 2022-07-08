require_relative 'card'

class Deck

    def initialize
        @deck = []
        suits = ['clubs','diamonds','hearts','spades']
        ranks = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
        jokers = ['Joker1', 'Joker2']

        suites.each do |suit|
            ranks.each do |rank|
                card = Card.new(suit, rank)
                @deck << card
            end
        end
        @deck.concat(jokers)
    end

    def shuffle
        @deck.shuffle!
    end
    
    
end