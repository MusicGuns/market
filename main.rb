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

  begin
    input = gets.to_i
  end until input < produkts.count+1 && input > -1
    
  break if input == 0

  sum += produkts[input-1].price
  puts
  puts "Вы выбрали #{produkts[input-1].to_s}"
  puts "Всего товаров на сумму #{sum} р"
  puts
  
    if produkts[input-1].quantity == 1
    produkts.delete(produkts[input-1])
  else
    produkts[input-1].update(quantity: -1 )
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
