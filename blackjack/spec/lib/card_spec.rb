require "spec_helper"

RSpec.describe Card do
  let (:card1) {Card.new(6, "Spade")}
  let (:card2) {Card.new("K", "Diamond")}
  let (:card3) {Card.new("A", "Diamond")}
  describe "initialize" do
    it "gives the correct ranking" do
      expect(card1.value).to eq(6)
      expect(card2.value).to eq(10)
      expect(card3.value).to eq(11)
      expect(card2.rank).to eq("K")
    end
  end
end
