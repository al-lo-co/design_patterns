# frozen_string_literal: true

class ClassSingleton
  class << self
    attr_writer :name
  end

  class << self
    attr_reader :name
  end
end

p ClassSingleton.name = 'John'
p ClassSingleton.name
