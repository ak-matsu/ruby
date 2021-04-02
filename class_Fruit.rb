class Fruit

  # クラスメソッド
  def self.fresh
    puts "採れたて新鮮な果実です"
  end
 
  def initialize(name, price)
    @name = name
    @price = price
  end

  # インスタンスメソッド
  def introduce
    puts "#{@name}は#{@price}円です"
  end
end

# 3つのインスタンスを生成
# class Fruitをnewメソッドでインスタンス化し値を入れ、それぞれの変数へ代入
apple = Fruit.new("リンゴ", 120)
orange = Fruit.new("オレンジ", 200)
strawberry = Fruit.new("イチゴ", 60)

# クラスメソッドを実行
Fruit.fresh
# 各インスタンス変数を用いてインスタンスメソッドを実行。
apple.introduce
orange.introduce
strawberry.introduce