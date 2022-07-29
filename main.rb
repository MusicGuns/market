require_relative "lib/produkt"
require_relative "lib/book"
require_relative "lib/film"
require_relative "lib/albom"
require_relative "lib/produkt_collection"

puts "Что хотите купить"
sum = 0
produkts = ProduktCollection.from_dir.to_a

loop do
  produkts.each.with_index(1) {|produkt, i| puts "#{i}. #{produkt}"}
  puts "0. Выход"

  input = -1
  while input > produkts.count || input < 0 do
    input = gets.to_i
  end
    
  break if input == 0

  produkt_to_sale = produkts[input-1]
  sum += produkt_to_sale.price
  puts
  puts "Вы выбрали #{produkt_to_sale.to_s}"
  puts "Всего товаров на сумму #{sum} р"
  puts
  
    if produkt_to_sale.quantity == 1
    produkts.delete(produkt_to_sale)
  else
    produkt_to_sale.update(quantity: -1 )
  end
end

puts "C вас #{sum} рублей"
# movie = Film.new(price: 290, quantity: 4, name: "Алиса", author: "Я", year: "12.12.2002" )
# puts movie.to_s
# puts movie.update(price: 300, quantity: 0)
# puts movie.to_s

# book = Book.read_file("./data/book/1.txt")
# puts book.to_s
# puts

# produkts = ProduktCollection.from_dir

# produkts.sort(args: :price,acs: false)
# puts produkts.to_a
