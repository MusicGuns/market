require "date"
class Albom < Produkt
  attr_reader :janr

  def initialize(info)
    super
    @janr = info[:janr]
    @year = Date.parse(info[:year])
  end

  def to_s
    "Альбом #{@name} Исполнитель - #{@author}, Жанр: #{@janr}, Дата #{@year}, цена #{@price} р, (#{@quantity} осталось)"
  end

  def update(info)
    super
    @janr = info[:janr] if info[:janr]
    @year = Date.parse(info[:year]) if info[:year]
  end

  def self.read_file(way)
    info = File.readlines(way, chomp: true)
    self.new(
    :name => info[0],
    :price => info[4].to_i,
    :quantity => info[5].to_i,
    :year => info[3],
    :author => info[1],
    :janr => info[2]
    )
  end
end