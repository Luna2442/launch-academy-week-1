class Card
  attr_reader :rank, :suit, :value

  def initialize (rank, suit)
    @rank = rank
    @value = ranking(rank)
    @suit = suit
  end

  private

  def ranking(value)
    if ['J','Q','K'].include?(value)
      return 10
    elsif value == 'A'
      return 11
    else
      return value
    end
  end

end
