#親クラス
class Car
  def initialize(car_type, capacity)
    @name = car_type
    @capacity = capacity
  end

  def info
    puts "車種：#{@name} 乗車定員：#{@capacity}人"
  end
end
  
#新しいクラス < 元となるクラス
#子クラス
class PoliceCar <Car

  #オーバーライドとは、親クラスのメソッドを子クラスに
  #同名のメソッドを定義することによって上書きすること
  def info
    puts "車種：#{@name} 乗車定員：#{@capacity}人 パトロール時間：２４時間"
  end

  def siren
    puts "wow,wow"
  end

end

Police_car = PoliceCar.new("パトカー",5)
Police_car.info