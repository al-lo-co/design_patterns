# frozen_string_literal: true

require 'active_support/core_ext/module/delegation'

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Customer
  attr_reader :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end

class Order
  attr_reader :customer, :products

  # Use delegate to simplify the delegation of methods
  delegate :name, :email, to: :customer

  def initialize(customer)
    @customer = customer
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_amount
    @products.sum(&:price)
  end
end

# Create instances of Product
product1 = Product.new('T-shirt', 20)
product2 = Product.new('Pants', 40)

# Create an instance of Customer
customer = Customer.new('John', 'john@example.com')

# Create an instance of Order and add products
order = Order.new(customer)
order.add_product(product1)
order.add_product(product2)

# Calculate the total order amount
total = order.total_amount

puts "Customer: #{order.name}"
puts 'Products: '
order.products.each { |product| puts "- #{product.name}: $#{product.price}" }
puts "Total to pay: $#{total}"
