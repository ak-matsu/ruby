class Book
  attr_reader :title, :price

  def initialize(title, price)
   @title = title
   @price = price
  end
end

book = Book.new("プロを目指す人のためのruby入門",3218)
puts book.title
puts "#{book.price}円"