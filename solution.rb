require 'pry'
class Deck
    attr_reader :cards

    def initialize
        @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @suit= ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
    
        @rank.each do |rank|
            @suit.each do |suit|
               @cards << Card.new(suit,rank)
            end
        end
        @cards
    end

    def choose_card
        card = @cards.sample
        @cards.delete(card)
        card
    end
end

class Card
    attr_accessor :suit, :rank
    @@all =[]
    def initialize(suit,rank)
        @suit = suit 
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end
end
