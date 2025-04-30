# Singleton Pattern

## Concept

The Singleton pattern ensures a class has only one instance and provides a global point of access to it.

## When to Use
- When exactly one instance of a class is needed.
- To coordinate actions across a system (e.g., logging, connection pools).

## Simple Template (template.rb)
- Demonstrates Ruby's `Singleton` module.
- `SimpleLogger` logs messages using a single shared instance.

## Advanced Implementation (advanced/connection_pool.rb)
- Implements a connection pool manager.
- Only one instance of `ConnectionPool` manages the available/in-use connections.
- Prevents accidental creation of multiple pool managers.
- Demonstrates resource control and shared access.

### Methods:
- `checkout`: Allocates a connection.
- `checkin`: Returns a connection.
- `status`: Displays how many connections are in use or available.

## Real-World Example in Rails

### 1. Rails Logger
```ruby
Rails.logger.info("This is a log message")
```
Rails uses a singleton instance of a logger.

### 2. Configuration Access
```ruby
Rails.application.config.some_setting
```
Configuration settings are accessed via a singleton pattern.

### 3. Caching Layer
```ruby
Rails.cache.write("key", "value")
Rails.cache.read("key")
```
The cache system often uses a singleton cache store instance.

## Pros
- Controlled access to a single instance.
- Reduces memory footprint.
- Useful for shared resources like caches or loggers.

## Cons
- Global state can introduce hidden dependencies.
- Harder to test (need to stub or reset instance).
- Can lead to tight coupling if overused.

## Alternatives in Ruby
- Use class methods if instance state isn't required.
- Dependency Injection to avoid global access.
- Thread-safe memoization for lightweight alternatives.