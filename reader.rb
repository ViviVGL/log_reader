require_relative 'parse_file'

URL_REGEX = /request_to=\"(\S*)\"/
STATUS_REGEX = /response_status=\"(\d*)\"/

urls = ParseFile.parse(URL_REGEX)

unique_url = urls.uniq

url_count = {}
unique_url.each do |url|
  url_count[url] = urls.count(url)
end

puts url_count.max_by(3) { |x| x[1] }

statuses = ParseFile.parse(STATUS_REGEX)

unique_status = statuses.uniq

unique_status.each do |status|
  puts "#{status} - #{statuses.count(status)}"
end

