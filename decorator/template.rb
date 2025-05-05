# frozen_string_literal: true

class Coffee
  def cost
    5
  end
end

class MilkDecorator
  def initialize(beverage)
    @beverage = beverage
  end

  def cost
    @beverage.cost + 1.5
  end
end

class SugarDecorator
  def initialize(beverage)
    @beverage = beverage
  end

  def cost
    @beverage.cost + 0.5
  end
end

# Usage
coffee = Coffee.new
coffee_with_milk = MilkDecorator.new(coffee)
coffee_with_milk_and_sugar = SugarDecorator.new(coffee_with_milk)

puts "Total Cost: $#{coffee_with_milk_and_sugar.cost}"
