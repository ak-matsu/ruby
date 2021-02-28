puts "ようこそ！\n名前を入力してください"
name = gets.chomp

puts "秒数を知りたい時間を分単位で入力してください"
minutes = gets.to_i
secondos = minutes * 60
"タロウさん、#{5}分は#{5 * 60}秒です！"
puts "#{name}さん、#{minutes}分は#{secondos}秒です！"