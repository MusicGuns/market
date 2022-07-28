class Produkt
  attr_reader :price, :quantity, :name, :author

  def initialize(info)
    @price = info[:price]
    @quantity = info[:quantity]
    @author = info[:author]
    @name = info[:name]
  end

  def update(info)
    @price += info[:price] if info[:price]
    @quantity += info[:quantity] if info[:quantity]
    @author = info[:author] if info[:author]
    @name = info[:name] if info[:name]
  end

  def self.read_file(way)
    raise NotImplementedError
  end
end
