require "pry"
class Container

  attr_reader :weight, :maximum_holding_weight

  def initialize(weight, maximum)
    @weight = weight
    @maximum_holding_weight = maximum
    @ingredients = []
  end

  def ingredients
    @ingredients
  end

  def fill_with_ingredient(ingredient)
    weight_of_container = @weight
    @weight += @maximum_holding_weight # fill it
    weight_of_ingredients =  @weight - weight_of_container
    number_of_ingredient = weight_of_ingredients / ingredient.weight
    number_of_ingredient.floor.times do
      @ingredients << ingredient
    end
  end

  def which_ingredient
    ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    @ingredients.pop()
  end

  def empty
    @ingredients = []
  end

end
