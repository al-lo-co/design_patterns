require_relative "./report"
require_relative "./txt_report.rb"
require_relative "./html_report.rb"
require_relative "./json_report.rb"

data = "This is some data i want to put in my report"

puts TXTReport.call(data)
# puts JSONReport.call(data)
# puts HTMLReport.call(data)