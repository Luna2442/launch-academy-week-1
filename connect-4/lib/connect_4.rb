require_relative 'game'
require_relative 'player'
require_relative 'piece'


connect_4 = Game.new

player_1 = Player.new('Alex', 'X')
player_2 = Player.new('Computer', 'O')

game_over = false

while !game_over
  puts ""
  puts "Player 1: Play a piece!"
  player_1.play_piece(connect_4)
  print connect_4.inspect
  puts "Player 2: Play a piece!"
  player_2.play_piece(connect_4)
  print connect_4.inspect
end
