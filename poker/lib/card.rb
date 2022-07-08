
class Card
    attr_reader :rank, :suite
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end    
end