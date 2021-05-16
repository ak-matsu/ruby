class Book
  def initialize(name)
    @name = name    
  end

  def name
    @name
  end

end

dog = Dog.new("ポチ")
puts dog.name