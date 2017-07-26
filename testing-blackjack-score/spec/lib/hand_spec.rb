require "spec_helper"

describe Hand do

  let(:hand1) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  let(:hand2) { Hand.new([Card.new("♥","K"), Card.new("♦", "K"), Card.new("♦", 10)]) }
  let(:hand3) { Hand.new([Card.new("♠","A"), Card.new("♣","A")]) }

  describe "#calculate_hand" do

    it "passes" do
      hand1.calculate_hand
      hand2.calculate_hand
      hand3.calculate_hand
      expect(hand1.score).to eq(20)
      expect(hand2.score).to eq(30)
      expect(hand3.score).to eq(12)
    end

    it "fails" do
      expect(hand1.calculate_hand).to eq(true)
      expect(hand2.calculate_hand).to eq(false)
      expect(hand3.calculate_hand).to eq(true)
    end

  end
end
