require_relative './lib/file_parser'
require_relative './lib/counter'
require_relative './lib/printer'

URL_REGEX = /request_to=\"(\S*)\"/
STATUS_REGEX = /response_status=\"(\d*)\"/

urls = FileParser.parse(URL_REGEX)
statuses = FileParser.parse(STATUS_REGEX)

url_count = Counter.count(urls)
status_count = Counter.count(statuses)

Printer.print(url_count.max_by(3) { |item| item[1] })
Printer.print(status_count.sort)
