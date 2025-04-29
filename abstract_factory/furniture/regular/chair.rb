require_relative '../products/chair.rb'

module Furniture
  module Regular
    class Chair < Furniture::Products::Chair
      def leg_count = 4
    end
  end
end