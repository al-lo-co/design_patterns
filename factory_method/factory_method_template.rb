# frozen_string_literal: true

#   Purpose:
#   The Factory pattern is used to create objects of one or more classes without explicitly specifying the exact class of object that will be created. It provides a common interface for object creation, but the decision of which concrete class to instantiate is made at runtime.

class Product
  def create = raise NotImplementedError, 'Subclasses must implement this method'
end

class ConcreteProductA < Product
  def create = raise NotImplementedError, 'Subclasses must implement this method'
end

class ConcreteProductB < Product
  def create = raise NotImplementedError, 'Subclasses must implement this method'
end

class Creator
  def factory_method = raise NotImplementedError, 'Subclasses must implement this method'

  def create_product
    product = factory_method
    product.create
  end
end

# Inheritance
class ConcreteCreatorA < Creator
  # composition
  def factory_method = ConcreteProductA.new
end

class ConcreteCreatorB < Creator
  def factory_method = ConcreteProductB.new
end

ConcreteCreatorA.new.factory_method
