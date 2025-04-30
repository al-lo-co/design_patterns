# frozen_string_literal: true

require_relative '../products/chair'

module Furniture
  module Vintage
    class Chair < Furniture::Products::Chair
      def leg_count = 5
    end
  end
end
