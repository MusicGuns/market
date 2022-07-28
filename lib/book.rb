class Book < Produkt
  attr_reader :janr

  def initialize(info)
    super
    @janr = info[:janr]
  end

  def to_s
    "Книга #{@name} Автор - #{@author}, Жанр: #{@janr}, цена #{@price} р, (#{@quantity} осталось)"
  end

  def update(info)
    super
    @janr = info[:janr] if info[:janr]
  end

  def self.read_file(way)
    info = File.readlines(way, chomp: true)
    self.new(
    :name => info[0],
    :price => info[3].to_i,
    :quantity => info[4].to_i,
    :author => info[2],
    :janr => info[1]
    )
  end

end
