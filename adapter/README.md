# Adapter Pattern

## Concept

The Adapter pattern allows incompatible interfaces to work together by wrapping an existing class with a new interface.

## When to Use
- You want to reuse existing code but its interface is incompatible with your application.
- You need to integrate with third-party libraries or legacy systems.

## Simple Template (template.rb)
- `OldPrinter` and `NewPrinter` have different method names.
- `PrinterAdapter` maps `print_text` to `output`, enabling the use of the new class where the old interface is expected.

## Advanced Implementation (advanced/payment_processor_adapter.rb)
- A `LegacyPaymentProcessor` uses cents, while the modern system works with dollars.
- `PaymentAdapter` bridges this difference and allows integration with `ModernCheckoutSystem`.

## Real-World Example in Rails

### 1. Wrapping External APIs
```ruby
class TwilioAdapter
  def initialize(twilio_client)
    @client = twilio_client
  end

  def send_sms(to:, body:)
    @client.messages.create(to: to, from: ENV['TWILIO_FROM'], body: body)
  end
end
```

### 2. Integrating with Legacy Systems
```ruby
class LegacyUserAdapter
  def initialize(legacy_user)
    @legacy_user = legacy_user
  end

  def email
    @legacy_user.mail_address
  end
end
```

## Pros
- Enables integration without modifying existing code.
- Promotes reuse of legacy or third-party components.

## Cons
- Can introduce extra layers and complexity.
- Overuse may lead to code that’s hard to understand.

## Related Patterns
- **Facade** simplifies an interface, while **Adapter** converts it.
- Often used together with Strategy or Bridge for extensibility.