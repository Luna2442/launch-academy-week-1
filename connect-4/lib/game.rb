class Game
  attr_reader :board

  def initialize
    @board = create_board
  end

  def create_board
    board = []
    10.times do
      row = []
      12.times do
        row << " "
      end
      board << row
    end

    board.each do |row|
      row.each_with_index do |space, i|
        if i == 0
          print " | "
        elsif i == 11
          print "| "
        else
          print "#{space} "
        end
      end
      print "\n"
    end
    print "   A B C D E F G H I J "
    return board
  end

end
