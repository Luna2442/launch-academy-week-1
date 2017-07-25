class Hand
  attr_accessor :cards
  attr_reader :score, :player

  def initialize(player)
    @player = player
    @cards = []
    @score = 0
  end

  def hit(deck)
    card = deck.deal_card
    @cards << card
    @score += card.value
    puts "#{@player} was dealt a #{card.rank} of #{card.suit}."
  end

end
