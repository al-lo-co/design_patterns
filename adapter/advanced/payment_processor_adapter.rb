# Old interface
class LegacyPaymentProcessor
  def make_payment(amount_in_cents)
    puts "Processing payment of #{amount_in_cents} cents"
  end
end

# New interface expected by modern system
class ModernCheckoutSystem
  def initialize(payment_processor)
    @payment_processor = payment_processor
  end

  def pay(amount_in_dollars)
    @payment_processor.process_payment(amount_in_dollars)
  end
end

# Adapter to bridge the interfaces
class PaymentAdapter
  def initialize(legacy_processor)
    @legacy_processor = legacy_processor
  end

  def process_payment(amount_in_dollars)
    cents = (amount_in_dollars * 100).to_i
    @legacy_processor.make_payment(cents)
  end
end

# Usage
legacy_processor = LegacyPaymentProcessor.new
adapter = PaymentAdapter.new(legacy_processor)
checkout = ModernCheckoutSystem.new(adapter)

checkout.pay(29.99)