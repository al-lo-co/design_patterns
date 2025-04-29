require_relative '../products/chair.rb'

module Furniture
  module Modern
    class Chair < Furniture::Products::Chair
      def leg_count = 2
    end
  end
end