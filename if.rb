# 問題.1
# ターミナルから数字を入力して、数字に応じて以下のように出力するプログラムを書いてください。

# 10以下なら10以下の数字です
# 10より大きい数値なら10より大きい数字です
# 10以下でかつ0以下なら0以下の数字です


num = gets.to_i

if num <= 0
  puts "0以下の数字です"
elsif num <= 10
  puts "10以下の数字です"
else
  puts "10より大きい数字です。"
end