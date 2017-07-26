class Piece
  attr_reader :player, :type
  attr_accessor :location

  def initialize(player, type)
    @player = player
    @type = type
    @location = nil
  end

end
