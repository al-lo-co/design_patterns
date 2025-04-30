# frozen_string_literal: true

require_relative './chair'
require_relative './table'

module Furniture
  module Vintage
    class Factory
      def create_chair = Chair.new
      def create_table = Table.new
    end
  end
end
