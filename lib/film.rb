require "date"
class Film < Produkt
  attr_reader :year

  def initialize(info)
    super
    @year = Date.parse(info[:year])
  end

  def to_s
    "Фильм #{@name} Автор - #{@author}, Год выпуска #{@year}, цена #{@price} р, (#{@quantity} осталось)"
  end

  def update(info)
    super
    @year = Date.parse(info[:year]) if info[:year]
  end
  
  def self.read_file(way)
    info = File.readlines(way, chomp: true)

    self.new(
    :name => info[0],
    :price => info[3].to_i,
    :quantity => info[4].to_i,
    :author => info[1],
    :year => info[2]
    )
  end
end
