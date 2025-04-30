# frozen_string_literal: true

require_relative '../products/chair'

module Furniture
  module Modern
    class Chair < Furniture::Products::Chair
      def leg_count = 2
    end
  end
end
