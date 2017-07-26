require "spec_helper"

RSpec.describe Card do
  let (:card1) {Card.new(6, "Spade")}
  let (:card2) {Card.new("K", "Diamond")}
  let (:card3) {Card.new("A", "Diamond")}
  describe "initialize" do
    it "gives the correct ranking" do

      expect(card2.rank).to eq("K")
      expect(card3.suit).to eq("Diamond")
      expect(card1.rank).to eq(6)
    end
  end
end
