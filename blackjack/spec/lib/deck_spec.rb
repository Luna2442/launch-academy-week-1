require "spec_helper"

RSpec.describe Deck do
  let (:deck) {Deck.new}
  describe "#build deck" do
    it "creates a full deck" do
      expect(deck.all_cards.size).to eq(52)
    end
  end
  describe "#deal_card" do
    it "removes and returns a random card from the deck" do
      deck.deal_card
      expect(deck.all_cards.size).to eq(51)
    end
  end
end
