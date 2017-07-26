require_relative 'deck'

class Hand
  attr_reader :score
  def initialize(cards)
    @cards = cards
    @score = 0
  end

  def calculate_hand
    @cards.each do |card|
      if ["J", "Q", "K"].include?(card.value)
        @score += 10
      elsif card.value === "A" && @score <= 10
        @score += 11
      elsif card.value === "A" && @score > 10
        @score += 1
      else
        @score += card.value
      end
    end
    if @score > 21
      false
    else
      true
    end

  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
