require "spec_helper"

RSpec.describe Hand do
  let (:deck) {Deck.new}
  let (:my_hand) {Hand.new('player')}
  describe "#initialize" do
    it "is an empty array" do
      expect(my_hand.cards.size).to eq(0)
    end
  end

  describe "#hit" do
    it "takes another card and adds to my cards" do
      my_hand.hit(deck)
      expect(my_hand.cards.size).to eq(1)
    end
    it "adds to the hand's score" do
      my_hand.cards.clear
      my_hand.hit(deck)
      expect(my_hand.score).to eq(11)
    end
  end
end
