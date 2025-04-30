# frozen_string_literal: true

require_relative '../products/table'

module Furniture
  module Regular
    class Table < Furniture::Products::Table
      def material = 'Plastic'
    end
  end
end
