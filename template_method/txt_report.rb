require_relative "./report.rb"

class TXTReport < Report
  class << self
    private

    def format = [format_header, format_body, format_footer].join

    def format_header = "#{year} Report"
    def format_body = "\n#{spacer} #{@data} \n #{spacer}"
    def format_footer = "#{year} @ Copyright Acme inc."

    def spacer = "#{'-' * 72}\n"
  end
end