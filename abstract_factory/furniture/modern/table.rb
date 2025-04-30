# frozen_string_literal: true

require_relative '../products/table'

module Furniture
  module Modern
    class Table < Furniture::Products::Table
      def material = 'Some interesting material'
    end
  end
end
