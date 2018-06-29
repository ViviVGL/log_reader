class Printer
  def self.print(data)
    puts normalize(data)
  end

  def self.normalize(items)
    items.map { |item| item.join(" - ") }
  end
end
