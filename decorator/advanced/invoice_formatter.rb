# frozen_string_literal: true

class BaseInvoice
  def details
    'Invoice details.'
  end
end

class HeaderDecorator
  def initialize(invoice)
    @invoice = invoice
  end

  def details
    "[Header]\n#{@invoice.details}"
  end
end

class FooterDecorator
  def initialize(invoice)
    @invoice = invoice
  end

  def details
    "#{@invoice.details}\n[Footer]"
  end
end

class SignatureDecorator
  def initialize(invoice)
    @invoice = invoice
  end

  def details
    "#{@invoice.details}\nSigned by: Admin"
  end
end

# Usage
invoice = BaseInvoice.new
invoice_with_header = HeaderDecorator.new(invoice)
invoice_with_header_footer = FooterDecorator.new(invoice_with_header)
final_invoice = SignatureDecorator.new(invoice_with_header_footer)

puts final_invoice.details
