# frozen_string_literal: true

require_relative '../products/table'

module Furniture
  module Vintage
    class Table < Furniture::Products::Table
      def material = 'Wood'
    end
  end
end
