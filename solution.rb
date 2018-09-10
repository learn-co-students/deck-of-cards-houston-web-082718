class Deck
    @@all = []

        attr_accessor :cards
    def initialize
        @rank = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
        @suit = ['Clubs', 'Hearts', 'Spades', 'Diamonds']
        @cards = []
        
        @rank.each do |rank|
            @suit.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
        @cards.shuffle!
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end
end

class Card
    @@all = []
    attr_accessor :rank, :suit
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
        @@all << self
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end
end
