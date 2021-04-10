# 問題.1
# 平日ではないまたは、休暇の場合はtrueと出力し、
# 休暇ではない場合はfalseと条件分岐させるメソッドを作りましょう。

# 出力例：
# 呼び出し元の引数に、trueまたはfalseを2つ渡します。
# 第一引数の値は「平日かどうか」を、第二引数には「休暇かどうか」を、trueまたはfalseを用いて表しています。

# sleep_in(false, false) → true
# sleep_in(true, false) → false
# sleep_in(false, true) → true


def sleep_in(weekdays,holiday)
  if !(weekdays) or holiday 
    puts "true"
  else
    puts "false"
  end
end

sleep_in(false, false)
sleep_in(true, false)
sleep_in(false, true)