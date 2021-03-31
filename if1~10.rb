# 問題.1
# 以下の条件式をif文を用いて記述してください。

# 数値numが1以上かつ10以下の範囲であればTrueを出力します。
# または、outside_modeがTrueの場合は数値numが0以下、11以上であってもTrueを出力します。
# それ以外はFalseを出力する条件を論理演算子&&と||を用いて作りましょう。

# 以下の雛形を用いて条件式を記述しましょう。

# def in1to10(num, outside_mode)
#   # ここに条件式を記述する
# end

def in1to10(num, outside_mode)
  if num >= 1 && num <= 10
    puts "数値numが1以上かつ10以下の範囲である"
  elsif num <= 0 || num >= 11
    puts "数値numが0以下、11以上である"
  else
    puts false
  end
end


num = gets.to_i
outside_mode = gets.to_s

in1to10(num,outside_mode)