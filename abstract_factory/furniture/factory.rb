# frozen_string_literal: true

require_relative './modern/factory'
require_relative './regular/factory'
require_relative './vintage/factory'

module Furniture
  class Factory
    TYPES = {
      vintage: Vintage::Factory,
      modern: Modern::Factory
    }.freeze

    def self.for(type)
      (TYPES[type] || Regular::Factory).new
    end
  end
end
