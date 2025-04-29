require_relative '../products/chair.rb'

module Furniture
  module Vintage
    class Chair < Furniture::Products::Chair
      def leg_count = 5
    end
  end
end