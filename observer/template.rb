# frozen_string_literal: true

class SimpleSubject
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def notify_observers(message)
    @observers.each { |observer| observer.update(message) }
  end
end

class SimpleObserver
  def update(message)
    puts "Received update: #{message}"
  end
end

# Usage
subject = SimpleSubject.new
observer = SimpleObserver.new
subject.add_observer(observer)
subject.notify_observers('Hello World')
