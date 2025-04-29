require_relative './chair.rb'
require_relative './table.rb'

module Furniture
  module Modern
    class Factory
      def create_chair = Chair.new
      def create_table = Table.new
    end
  end
end