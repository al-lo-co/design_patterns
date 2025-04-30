# frozen_string_literal: true

require 'singleton'

class SimpleLogger
  include Singleton

  def log(message)
    puts "[LOG] #{message}"
  end
end
