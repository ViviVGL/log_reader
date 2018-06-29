class Counter
  def self.count(info)
    unique_info = info.uniq

    info_count = {}

    unique_info.each do |data|
      info_count[data] = info.count(data)
    end
    info_count
  end
end
