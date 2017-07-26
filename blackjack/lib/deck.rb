class Deck
  attr_reader :all_cards, :suits, :ranks

  def initialize
    @suits = ['♦', '♥', '♣', '♠']
    @ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
    @all_cards = []
    @ranks.each do |rank|
      @suits.each do |suit|
        @all_cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle_cards
    @all_cards.shuffle!
  end

  def deal_card
    @all_cards.pop
  end

end
