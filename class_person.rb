# ・Personクラスはプロパティ name, ageを持っている。
# ・StudentクラスはPersonクラスを継承している。
# ・Studentクラスにはintroduceメソッドが定義されている。実行すると
# 「私の名前は◯◯です。◯歳です」と表示がされる。
# ・Studentクラスのインスタンスを作成し、introduceメソッドを実行する。

# クラスの継承
# クラスの継承を活用すると、利用したいすべてのクラスを最初から作成することなく、共通する部分を受け継ぐことができます。
# 以下のように使用します。

# class クラス名 < 継承したいクラス名（親クラス）

# end

class Person
  def initialize(name,age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "名前は#{@name}です。#{@age}歳です。"
  end
end

yamada = Student.new("山田",20)
yamada.introduce