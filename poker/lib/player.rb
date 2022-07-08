require_relative 'deck'

class Player
    attr_reader :name

    def initialize(name)
        @name = name
        @hand = []
        @pot = "$100"
    end

    def discard
        #takes out 
    end

    def see
    end

    def fold
    end

    def raise
    end

end