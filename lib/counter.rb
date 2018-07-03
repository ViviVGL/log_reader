class Counter
  def self.count(info)
    info_count = {}
    info.uniq.each do |data|
      info_count[data] = info.count(data)
    end
    info_count
  end
end
