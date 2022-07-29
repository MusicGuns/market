class ProduktCollection
  attr_reader :books, :films
  def initialize(books, films, alboms)
    @produkt = books + films + alboms
  end

  def self.from_dir
    # way_book = "./../data/book/*.txt"
    # way_film = "./../data/film/*.txt"

    ways_book = Dir["#{__dir__}/../data/book/*.txt"]
    ways_film = Dir["#{__dir__}/../data/film/*.txt"]
    ways_albom = Dir["#{__dir__}/../data/albom/*.txt"]
    self.new(book_reader(ways_book), film_reader(ways_film), albom_reader(ways_albom))
    
  end

  def to_a
    @produkt
  end

  def sort(sort_info)
    case sort_info[:args]
    when :name
      @produkt.sort_by!(&:to_s)
    when :price
      @produkt.sort_by!(&:price)
    when :quantity
      @produkt.sort_by!(&:quantity)
    end
    @produkt.reverse! if sort_info[:acs] == true
  end

  def self.film_reader(ways_film)
    ways_film.map {|way| Film.read_file(way)}
  end

  def self.albom_reader(ways_albom)
    ways_albom.map {|way| Albom.read_file(way)}
  end

  def self.book_reader(ways_book)
    ways_book.map {|way| Book.read_file(way)}
  end
end