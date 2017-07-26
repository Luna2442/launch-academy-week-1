require "spec_helper"
require 'pry'

RSpec.describe Hand do
  let (:deck) {Deck.new}
  let (:my_hand) {Hand.new('player')}

  describe "#initialize" do
    it "has a name of the owner" do
      expect(my_hand.player).to eq('player')
    end

    it "is an empty array" do
      expect(my_hand.cards.size).to eq(0)
    end

    it "has a score of zero" do
      expect(my_hand.score).to eq(0)
    end
  end

  describe "#hit" do
    it "takes another card and adds to my cards" do
      my_hand.hit(deck)
      expect(my_hand.cards.size).to eq(1)
    end
    
    it "calculates the score" do
      my_hand.cards.clear

      card1 = Card.new("A", "♦")
      card2 = Card.new("A", "♥")
      card3 = Card.new("K", "♣")
      card4 = Card.new(10, "♠")

      my_hand.cards << card1
      my_hand.cards << card2
      my_hand.cards << card3

      my_hand.calculate_score

      expect(my_hand.score).to eq(12)

      my_hand.cards << card4

      my_hand.calculate_score

      expect(my_hand.score).to eq(22)
    end
  end
end
