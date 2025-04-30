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

class LoggerListener
  def initialize(log_prefix = "[Logger]")
    @log_prefix = log_prefix
  end

  def call(message)
    puts "#{@log_prefix} Event received with message: #{message}"
  end
end

class EmailNotifier
  def initialize(admin_email)
    @admin_email = admin_email
  end

  def call(message)
    puts "[EmailNotifier] Sending email to #{@admin_email} with content: #{message}"
  end
end

class AnalyticsTracker
  def call(message)
    puts "[Analytics] Tracking event: #{message}"
  end
end

# Usage
dispatcher = EventDispatcher.new
dispatcher.subscribe(:user_created, LoggerListener.new)
dispatcher.subscribe(:user_created, EmailNotifier.new("admin@example.com"))
dispatcher.subscribe(:user_created, AnalyticsTracker.new)

dispatcher.broadcast(:user_created, "User John has been created.")