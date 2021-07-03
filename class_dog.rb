# 表示結果
# ワンワン
# わたしは犬です
# わたしの名前はマロンで種類はトイプードルです

# クラス変数	
# 変数名	値
# type	犬
	
# インスタンス変数	
# 変数名	値
# name	マロン
# dog_type	トイプードル
	
# クラスメソッド	
# メソッド名	処理
# say	“ワンワン”とターミナルに出力する
	
# インスタンスメソッド	
# メソッド名	処理
# say_type	”わたしは「クラス変数type」です”とターミナルに出力する
# self_introduction	”私の名前は「インスタンス変数name」で種類は「インスタンス変数dog_type」です”とターミナルに出力する

class Dog
  @@type = "犬"

  def initialize
    @name = "マロン"
    @dog_type = "トイプードル"
  end

  def self.say
    puts "ワンワン"
  end

  def say_type
    puts "わたしは#{@@type}です"
  end

  def self_introduction
    puts "わたしの名前は#{@name}で種類は#{@dog_type}です"
  end
end

dog = Dog.new
Dog.say
dog.say_type
dog.self_introduction