class EventDispatcher
  def initialize
    @listeners = Hash.new { |h, k| h[k] = [] }
  end

  def subscribe(event_name, listener)
    @listeners[event_name] << listener
  end

  def unsubscribe(event_name, listener)
    @listeners[event_name].delete(listener)
  end

  def broadcast(event_name, payload = nil)
    @listeners[event_name].each { |listener| listener.call(payload) }
  end
end

# Example listeners
logger = ->(msg) { puts "[Logger] #{msg}" }
notifier = ->(msg) { puts "[Notifier] #{msg}" }

# Usage
dispatcher = EventDispatcher.new
dispatcher.subscribe(:user_created, logger)
dispatcher.subscribe(:user_created, notifier)

dispatcher.broadcast(:user_created, "User John has been created.")
