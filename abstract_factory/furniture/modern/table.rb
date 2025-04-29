require_relative '../products/table.rb'

module Furniture
  module Modern
    class Table < Furniture::Products::Table
      def material = 'Some interesting material'
    end
  end
end