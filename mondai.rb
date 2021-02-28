# if friend [:height] >= 130
#   puts "#{friend[:name]}くんは乗車できます"
#   ride_count += 1
# else
#   puts "#{friend[:name]}くんは乗車できません！"
# end


# input = gets.to_i

# 0以下の数値なら0以下の数字です
# 10以上の数値なら10以上の数字です
# 1以上9以下の数値なら0より大きく10より小さい数字です

# if input <= 0
#   puts "#{input}は0以下の数字です。"
# elsif input >= 10
#   puts "#{input}は10以上の数字です。"
# else
#   puts "0より大きく10より小さい数字です。"
# end

# times.10 do |i|
#   puts "#{i}回目の繰り返し"
# end


# class Car

#   def initialize{car_name, car_model, capacity}
#     @name = car_name
#     @model = car_model
#     @capacity = capacity
#   end

#   def self.run
#     puts "走行します"
#   end

#   def ride_car(ride_number)
#     @ride_number = ride_number
#     if ride_number > @capacity
#       puts "#{@name}は、乗車定員が#{@capacity}人なので、#{@ride_number}人は乗れません。"
#     else
#       puts "#{@ride_number}人乗車できました。"
#     end
#   end
# end

# fire_truck = Car.new("消防車","大型車",5)
# fire_truck.ride_car(3)

# Car.run

# class Human
#   def self.hello
#     puts "おはよう"
#   end
# end
# Human.hello


# class Human
#   def hello
#     puts "おはよう"
#   end
# end

# human = Human.new
# human.hello


def plus_one
  number = gets.to_i
  puts number + 1
end

plus_one