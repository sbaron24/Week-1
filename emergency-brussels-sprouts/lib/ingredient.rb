class Ingredient

  attr_reader :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, weight)
    weight_in_kg = weight / 1000
    ingredient_in_kg = Ingredient.new(name, weight_in_kg)
  end

end
