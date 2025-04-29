require_relative './modern/factory.rb'
require_relative './regular/factory.rb'
require_relative './vintage/factory.rb'

module Furniture
  class Factory
    TYPES = {
      vintage: Vintage::Factory,
      modern: Modern::Factory
    }

    def self.for(type)
      (TYPES[type] || Regular::Factory).new
    end
  end
end