class OldPrinter
  def print_text(text)
    puts "OldPrinter: #{text}"
  end
end

class NewPrinter
  def output(text)
    puts "NewPrinter: #{text}"
  end
end

class PrinterAdapter
  def initialize(new_printer)
    @new_printer = new_printer
  end

  def print_text(text)
    @new_printer.output(text)
  end
end

# Usage
old_printer = OldPrinter.new
new_printer = PrinterAdapter.new(NewPrinter.new)

old_printer.print_text("Hello from old printer")
new_printer.print_text("Hello from adapted new printer")
