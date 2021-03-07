num = gets.to_i

if num > 0
  puts "値は正です"
elsif num < 0
  puts "値は負です"
else
  puts "値は0です"
end

if num % 15 == 0
  puts num.to_s + "は３と５の倍数です。"
elsif num % 3 == 0
  puts num.to_s + "は３の倍数です。"
elsif num % 5 == 0
  puts num.to_s + "は５の倍数です。"
else
  puts num.to_s + "は３の倍数でも５の倍数でもありません。"
end