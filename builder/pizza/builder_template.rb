# frozen_string_literal: true

#   Purpose:
#   The Builder pattern is used to construct a complex object step by step. It allows the creation of composite objects with many configurable parts, ensuring flexibility in the construction process.

# Product Class: Pizza
class Pizza
  attr_accessor :dough, :sauce, :cheese, :toppings

  def initialize(dough, sauce, cheese, toppings)
    @dough = dough
    @sauce = sauce
    @cheese = cheese
    @toppings = toppings
  end

  def to_s
    "Pizza: #{@dough}, #{@sauce}, #{@cheese}, #{toppings.join(', ')}"
  end
end

# Builder Class: PizzaBuilder
class PizzaBuilder
  def initialize
    @dough = ''
    @sauce = ''
    @cheese = ''
    @toppings = []
  end

  def set_dough(dough)
    @dough = dough
    self
  end

  def set_sauce(sauce)
    @sauce = sauce
    self
  end

  def set_cheese(cheese)
    @cheese = cheese
    self
  end

  def add_topping(topping)
    @toppings << topping
    self
  end

  def build
    Pizza.new(@dough, @sauce, @cheese, @toppings)
  end
end

# Using the Builder to create a customized pizza
pizza_builder = PizzaBuilder.new
pizza = pizza_builder.set_dough('Thin Crust').set_sauce('Tomato').set_cheese('Mozzarella').add_topping('Ham').add_topping('Olives').build

puts(pizza)
