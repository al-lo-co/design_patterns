# Observer Pattern

## Concept

The Observer pattern defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified automatically. This decouples the subject from the observers.

## When to Use
- You need many objects to react to changes in another object.
- You want to avoid tightly coupling classes.
- You’re implementing event handling systems or publish-subscribe mechanisms.

## Simple Template (template.rb)
- A `SimpleSubject` maintains a list of observers and notifies them using a `notify_observers` method.
- Each `SimpleObserver` implements an `update` method.
- This shows the basic principle without flexibility for named events or complex payloads.

## Advanced Implementation (advanced/event_dispatcher.rb)
- `EventDispatcher` allows listeners to subscribe to named events.
- Multiple listeners can subscribe to the same event.
- Listeners can be more complex objects that encapsulate specific behavior, such as logging, notifying, or tracking.

### Advanced Listeners:
- `LoggerListener` logs messages with a configurable prefix.
- `EmailNotifier` simulates sending an email to a specific address.
- `AnalyticsTracker` simulates sending event data to an analytics service.

## Real-World Example in Rails
- `ActiveSupport::Notifications` is a built-in observer-like mechanism.
- You can publish an event: `ActiveSupport::Notifications.instrument("user.created", payload)`
- You can subscribe: `ActiveSupport::Notifications.subscribe("user.created") { |*args| ... }`

## Pros
- Promotes loose coupling.
- Flexible event-driven design.
- Encourages reuse and separation of concerns.

## Cons
- Can lead to unexpected dependencies if not documented.
- Debugging can be harder due to indirection.

## Tools
- ActiveSupport::Notifications
- Gem Wisper
- Model Callbacks