class Deck
  attr_reader :all_cards, :suits, :values

  def initialize
    @suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades']
    @values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
    @all_cards = []
    @values.each do |value|
      @suits.each do |suit|
        @all_cards << Card.new(value, suit)
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
