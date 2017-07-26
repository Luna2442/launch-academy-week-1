require_relative "card"
require_relative "deck"
require_relative "hand"

player = Hand.new('Player')
dealer = Hand.new('Dealer')
# Your code here...
puts "Welcome to Blackjack!\n\n"
bust = nil

deck = Deck.new
deck.shuffle_cards

2.times {player.hit(deck)}
puts "#{player.player}'s Score: #{player.score}\n"

puts ""

playing = true
while playing
  print "Hit or stand (H/S)\n"
  response = gets.chomp
  if response.downcase == "h"
    player.hit(deck)
    puts "#{player.player}'s Score: #{player.score}"
    if player.score > 21
      puts "Bust, you lose!"
      bust = true
      playing = false
    end
  else
    playing = false
  end
end

# puts ""

if bust != true
  dealer_playing = true
  2.times {dealer.hit(deck)}
  puts "#{dealer.player}'s Score: #{dealer.score}\n\n"
  while dealer_playing
    if dealer.score <= 21 && dealer.score > player.score
      puts "The dealer wins."
      dealer_playing = false
    elsif dealer.score < 17
      dealer.hit(deck)
      puts "#{dealer.player}'s Score: #{dealer.score}\n\n"
      if dealer.score > 21
        puts "Dealer busts, you win!"
        dealer_playing = false
      end
    elsif dealer.score < 21 && dealer.score < player.score
      puts "Player wins!"
      dealer_playing = false
    elsif dealer.score == player.score
      puts "It's a tie."
      dealer_playing = false
    end
  end
end
