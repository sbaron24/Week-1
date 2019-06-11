require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"
require "pry"


#GAME START

puts "GAME START!"
puts " "

deck = Deck.new

puts "These are #{deck.cards.length} in the deck."
puts " "

player_1 = Hand.new("Player 1")
player_2 = Hand.new("Player 2")

deck.deal(player_1)
deck.deal(player_2)


puts "#{player_1.name} was dealt #{player_1.first_card}, #{player_1.second_card}, #{player_1.third_card}, #{player_1.fourth_card}"
puts "#{player_2.name} was dealt #{player_2.first_card}, #{player_2.second_card}, #{player_2.third_card}, #{player_2.fourth_card}"
puts " "

puts "#{player_1.name}'s hand value: #{player_1.hand_value}."
puts "#{player_2.name}'s hand value: #{player_2.hand_value}."
puts " "

if player_1.hand_value > player_2.hand_value
  puts "#{player_1.name} wins!"
elsif player_1.hand_value == player_2.hand_value
  puts "The game is a tie!"
else
  puts "#{player_2.name} wins!"
end
