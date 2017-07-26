require 'pry'

class Player
  attr_reader :name

  def initialize(name, piece_type)
    @name = name
    @piece_type = piece_type
  end

  def play_piece(board)
    play = true
    i = 9

      puts "Pick a column"
      input = gets.chomp
      piece = Piece.new(@name, @piece_type)

      case input.downcase
      when "a"
        input = 1
      when "b"
        input = 2
      when "c"
        input = 3
      when "d"
        input = 4
      when "e"
        input = 5
      when "f"
        input = 6
      when "g"
        input = 7
      when "h"
        input = 8
      when "i"
        input = 9
      when "j"
        input = 10
      else
        input = 1
      end

    while play
      if board.board[i][input] == " "
        board.board[i][input] << piece.type
        play = false
      elsif board.board[0][input] != " "
        puts "You can't put a piece here"
        play = false
      else
        i -= 1
      end

    end

  end

end
