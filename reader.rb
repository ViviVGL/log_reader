require_relative 'file_parser'
require_relative 'counter'

URL_REGEX = /request_to=\"(\S*)\"/
STATUS_REGEX = /response_status=\"(\d*)\"/

urls = FileParser.parse(URL_REGEX)

url_count = Counter.count(urls)

puts url_count.max_by(3) { |x| x[1] }

statuses = FileParser.parse(STATUS_REGEX)

status_count = Counter.count(statuses)

puts status_count.sort
