class Card
  attr_reader :rank, :suit, :low_ace

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @low_ace = false
  end

  def reduce_ace
    @low_ace = true
  end

end
