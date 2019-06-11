require "pry"

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def card_value
    if (@rank == "J")
      @card_value = 11
    elsif (@rank == "Q")
      @card_value = 12
    elsif (@rank == "K")
      @card_value = 13
    elsif (@rank == "A")
      @card_value = 14
    else
      @card_value = @rank
    end
  end
  # Your code here

  # Methods you may need:
  # - initialize
  # - method that assigns a card its "value"
  # - attribute readers
  # - any other methods you deem necessary
end




# card = Card.new(7, '♣')
#
# puts card
# puts "#{card.rank}, #{card.suit}"
#
# new_card = Card.new("K", '♦')
#
# puts new_card.card_value
