# your code here

class Hand

  attr_accessor :hand, :name

  def initialize(name)
    @name = name
    @hand = []
  end

  def first_card
    "#{@hand[0].rank}#{@hand[0].suit}"
  end

  def second_card
    "#{@hand[1].rank}#{@hand[1].suit}"
  end

  def third_card
    "#{@hand[2].rank}#{@hand[2].suit}"
  end

  def fourth_card
    "#{@hand[3].rank}#{@hand[3].suit}"
  end

  def hand_value
    sum = 0
    @hand.each do |card|
      sum += card.card_value
    end
    sum
  end
end
