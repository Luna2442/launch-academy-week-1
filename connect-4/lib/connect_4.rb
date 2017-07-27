require_relative 'game'
require_relative 'player'
require_relative 'piece'
require 'pry'

connect_4 = Game.new
connect_4.display_board

player_1 = Player.new('Alex', 'X')
player_2 = Player.new('Computer', 'O')

game_over = false

while !game_over
  puts ""
  puts "#{player_1.name}: Play a piece!"
  player_1.play_piece(connect_4)
  connect_4.display_board
  # connect_4.check_for_win(player_1)
  puts "#{player_2.name}: Play a piece!"
  player_2.play_piece(connect_4)
  connect_4.display_board
  # connect_4.check_for_win(player_2)
end
