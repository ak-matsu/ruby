def missing_char(str,n)
  str.slice!(n -1)
  puts str
end

missing_char('kitten',1)


# 問題.1
# 任意の文字列の最後の2文字を3回繰り返し
# 出力するメソッドを作りましょう。

# 出力例：
# extra_end('Hello') → 'lololo'
# extra_end('ab') → 'ababab'
# extra_end('Hi') → 'HiHiHi'

# 配列を作成します
array = [0,1,2,3,4,5,6]

# 配列から引数で指定した要素をsliceします
ele1 = array.slice(1)

puts ele1
#=> 1

# 配列番号1から4つ分の要素をsliceします
ele2 = array.slice(1,4)
puts ele2
#=> 1 2 3 4

# 配列はもとのままです
puts array 
#=> [0,1,2,3,4,5,6]

def extra_end(str)
  right2 = str.slice(- 2, 2)
  puts right2 * 3
end


# 出力例：
extra_end('Hello')
extra_end('ab')
extra_end('Hi')


# 問題.1
# 任意の2つの文字列があります。
# どちらかの文字列がもう一方の文字列の最後にある場合はTrueを
# ない場合はFalseを出力するプログラムを作りましょう。
# 条件として、入力された文字が大文字でも小文字でも、同一の文字として処理を行いましょう。
# その際、大文字から小文字に変換するメソッドを使用しましょう。

# sliceの範囲指定
# 範囲を指定して要素を切り取る場合は、以下のように記述して使うことができます。
# # 要素を定義
# array = "Hiabc"
# #配列番号（インデックス番号）の-3から-1の範囲の文字列を切り取る
# array.slice(-3..-1)
# #=> abc

# downcase
# 大文字を小文字に変換するメソッドです
# ターミナル
# # 大文字を含んだ文字列を定義
# irb(main):001:0> name = "Hiabc"
# => "Hiabc"

# # downcaseメソッドを使用し、小文字に変換
# irb(main):002:0> name.downcase
# => “hiabc”

def end_other(a,b)
  # 小文字へ変換
  a_down = a.downcase
  b_down = b.downcase
  # 文字列をカウント
  a_len = a_down.length
  b_len = b_down.length

  # 小文字に変換したものをsliceの範囲指定、配列番号を切り取る
  # b_downとa_downが同じである or a_downとb_downが同じであるか比較
  if b_down.slice(-(a_len)..-1) == a_down || a_down.slice(-(b_len)..-1) == b_down
    puts "True"
  else
    puts "False"
  end

end

# 出力例：
 end_other('Hiabc', 'abc')
 end_other('AbC', 'HiaBc')
 end_other('abc', 'abXabc') 