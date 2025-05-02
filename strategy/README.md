# Strategy Pattern

## Concept

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. This allows the algorithm to vary independently from clients that use it.

## When to Use
- When multiple algorithms can be used interchangeably.
- To avoid using many conditional statements.
- To follow the Open/Closed principle (easily add new strategies without modifying existing code).

## Simple Template (template.rb)
- A `PaymentContext` receives a payment strategy.
- Strategies like `CreditCardPayment` and `PayPalPayment` implement a common interface (`pay`).

## Advanced Implementation (advanced/shipping_calculator.rb)
- `ShippingContext` accepts different shipping strategies.
- Strategies include `GroundShipping`, `AirShipping`, and `DroneShipping`, each implementing a `calculate` method.
- The `Order` object holds data needed for calculation (weight and distance).

## Real-World Example in Rails

### 1. Authentication Strategies
```ruby
# Devise or OmniAuth use different authentication providers as strategies.
```

### 2. Payment Gateways
```ruby
# Choose Stripe, PayPal, etc., as interchangeable services to process payments.
```

### 3. Sorting or Filtering Services
```ruby
# Implement different strategies to sort or filter collections, like ProductSearch::Strategy
```

## Pros
- Cleaner code by encapsulating algorithms.
- Easier to test and maintain individual strategies.
- Supports open/closed principle.

## Cons
- More classes to manage.
- Strategies must share a common interface.

## Alternatives in Ruby
- Lambdas or Procs for simpler strategies.
- Service objects for more complex behavior encapsulation.
