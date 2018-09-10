require 'pry'

class Deck

    attr_accessor :cards

    def initialize
        @ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
        @suits = ['Spade', 'Club', 'Heart', 'Diamond']
        @cards = []

        @ranks.each do |rank|
            @suits.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
        @cards
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end
end

class Card

    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

end