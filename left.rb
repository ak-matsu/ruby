# 問題.1
# 任意の文字列の最初の2文字を最後尾に持ってきて
# その文字を出力するメソッドを作りましょう。

# 出力例：
# left2("Hello") → lloHe
# left2("java") → vaja
# left2("Hi") → Hi

# ヒント
# 範囲指定をして、指定の要素を取得しましょう。




def left2(str)
  puts str[2..-1] + str[0..1]  
end


left2("Hello")
left2("java")
left2("Hi")
