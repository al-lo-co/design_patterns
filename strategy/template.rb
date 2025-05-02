# frozen_string_literal: true

class PaymentContext
  def initialize(strategy)
    @strategy = strategy
  end

  def execute(amount)
    @strategy.pay(amount)
  end
end

class CreditCardPayment
  def pay(amount)
    puts "Paid $#{amount} using Credit Card"
  end
end

class PayPalPayment
  def pay(amount)
    puts "Paid $#{amount} using PayPal"
  end
end

# Usage
context = PaymentContext.new(CreditCardPayment.new)
context.execute(100)

context = PaymentContext.new(PayPalPayment.new)
context.execute(200)
