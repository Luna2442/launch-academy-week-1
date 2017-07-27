class Game
  attr_reader :board

  def initialize
    @board = create_board
  end

  def create_board
    board = []
    11.times do
      row = []
      12.times do |i|
        if i == 0
          row << " | "
        elsif i == 11
          row << " | "
        else
          row << "   "
        end
      end
      board << row
    end

    index = ["   ", " A "," B "," C "," D "," E "," F "," G "," H "," I "," J "]
    board[-1] = index

    return board
  end

  def display_board
    @board.each do |row|
      row.each do |space|
        print space
      end
      print "\n"
    end
  end

  def check_for_win(player)
    
  end

end
