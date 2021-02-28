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
class PoliceCar <Car
end

Police_car = PoliceCar.new("パトカー",5)
Police_car.info