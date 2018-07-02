class FileParser
  def self.parse(regex, filename)
    result = []
    read_file(filename).split(/\n/).each do |line|
      result << "#{regex.match(line)[1]}" if regex.match?(line)
    end
    result
  end

  def self.read_file(filename)
    File.read(filename)
      .encode('UTF-8', 'binary', invalid: :replace,
                                 undef: :replace, replace: '')
  end
end
