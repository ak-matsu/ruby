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
  if num >= 1 && num <= 10 || outside_mode
    puts "True"
  else
    puts "False"
  end
end

in1to10(5,false)
in1to10(11,false)
in1to10(11,true)

