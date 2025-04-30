# frozen_string_literal: true

require_relative '../products/chair'

module Furniture
  module Regular
    class Chair < Furniture::Products::Chair
      def leg_count = 4
    end
  end
end
