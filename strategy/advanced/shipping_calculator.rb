# frozen_string_literal: true

class ShippingContext
  def initialize(strategy)
    @strategy = strategy
  end

  def calculate(order)
    @strategy.calculate(order)
  end
end

class Order
  attr_reader :weight, :distance

  def initialize(weight:, distance:)
    @weight = weight
    @distance = distance
  end
end

class GroundShipping
  def calculate(order)
    cost = 5 + order.weight * 0.5 + order.distance * 0.1
    puts "Ground Shipping: $#{cost.round(2)}"
    cost
  end
end

class AirShipping
  def calculate(order)
    cost = 10 + order.weight * 1.0 + order.distance * 0.25
    puts "Air Shipping: $#{cost.round(2)}"
    cost
  end
end

class DroneShipping
  def calculate(order)
    cost = 15 + order.weight * 1.5 + order.distance * 0.5
    puts "Drone Shipping: $#{cost.round(2)}"
    cost
  end
end

# Usage
order = Order.new(weight: 10, distance: 50)

context = ShippingContext.new(GroundShipping.new)
context.calculate(order)

context = ShippingContext.new(AirShipping.new)
context.calculate(order)

context = ShippingContext.new(DroneShipping.new)
context.calculate(order)
