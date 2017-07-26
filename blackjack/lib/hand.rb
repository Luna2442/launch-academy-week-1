class Hand
  attr_accessor :cards, :score
  attr_reader :player

  def initialize(player)
    @player = player
    @cards = []
    @score = 0
  end

  def hit(deck)
    card = deck.deal_card
    @cards << card
    calculate_score
    puts "#{@player} got a #{card.rank} #{card.suit}."
  end

  def calculate_score
    @score = 0
    @cards.each do |card|
      if ["J","Q","K"].include?(card.rank)
        @score += 10
      elsif card.rank === "A"
        @score += 11
        if @score > 21 && @low_ace === false
          @score -= 10
          card.reduce_ace
        end
      elsif card.rank === "A" && @score > 10
        @score += 1
      else
        @score += card.rank
      end
    end
    if @score > 21
      @cards.each do |card|
        if card.rank === "A" && card.low_ace === false
          @score -= 10
        end
      end
    end
    return @score
  end

end
