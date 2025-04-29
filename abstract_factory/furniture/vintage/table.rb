require_relative '../products/table.rb'

module Furniture
  module Vintage
    class Table < Furniture::Products::Table
      def material = 'Wood'
    end
  end
end