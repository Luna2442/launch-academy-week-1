require "spec_helper"

RSpec.describe Deck do
  let (:deck) {Deck.new}
  describe "#initialize" do
    it "creates a full deck with correct values" do
      expect(deck.all_cards.size).to eq(52)
      expect(deck.suits).to eq(['♦', '♥', '♣', '♠'])
      expect(deck.ranks).to eq([2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'])
    end
  end

  describe "#shuffle_cards" do
    it "shuffles the array" do
      new_deck = Deck.new
      new_deck.shuffle_cards
      expect(new_deck.all_cards).not_to eq(deck.all_cards)
    end
  end

  describe "#deal_card" do
    it "removes and returns a random card from the deck" do
      deck.deal_card
      expect(deck.all_cards.size).to eq(51)
    end
  end
end
