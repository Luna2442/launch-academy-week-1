class Hand
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def start_hand(deck)
    2.times do
      card = deck.deal_card
      @cards << card
      puts "#{card.rank} of #{card.suit} was dealt."
    end
  end

  def hit(deck)
    card = deck.deal_card
    @cards << deck.deal_card
    puts "#{card.rank} of #{card.suit} was dealt."
  end

  def total_value
    sum = 0
    @cards.each do |card|
      sum += card.value
    end
    return sum
  end

end
