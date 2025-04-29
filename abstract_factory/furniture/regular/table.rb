require_relative '../products/table.rb'

module Furniture
  module Regular
    class Table < Furniture::Products::Table
      def material = 'Plastic'
    end
  end
end