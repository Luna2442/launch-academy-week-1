require "spec_helper"

RSpec.describe Hand do
  let (:deck) {Deck.new}
  let (:my_hand) {Hand.new}
  describe "#initialize" do
    it "is an empty array" do
      expect(my_hand.cards.size).to eq(0)
    end
  end

  describe "#take_hand" do
    it "grabs 2 cards" do
      my_hand.start_hand(deck)
      expect(my_hand.cards.size).to eq(2)
    end
  end

  describe "#hit" do
    it "takes another card and adds to my cards" do
      my_hand.start_hand(deck)
      my_hand.hit(deck)
      expect(my_hand.cards.size).to eq(3)
    end

  end

  describe "#total_value" do
    it "adds togethether all card values in hand" do
      my_hand.cards.clear
      my_hand.cards << Card.new(6, "Spades")
      my_hand.cards << Card.new("K", "Diamonds")
      expect(my_hand.total_value).to eq(16)
    end
  end
end
