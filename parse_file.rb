class ParseFile
  def self.parse(regex)
    result = []
    file = File.read('log.txt').encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
    file.split(/\n/).each do |line|
      result << "#{regex.match(line)[1]}" if regex.match?(line)
    end
    result
  end
end