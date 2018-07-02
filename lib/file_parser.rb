class FileParser
  def self.parse(regex)
    result = []
    read_file.split(/\n/).each do |line|
      result << "#{regex.match(line)[1]}" if regex.match?(line)
    end
    result
  end

  def self.read_file
    File.read('./log/log.txt')
      .encode('UTF-8', 'binary', invalid: :replace,
                                 undef: :replace, replace: '')
  end
end
