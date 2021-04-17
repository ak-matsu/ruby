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

# 出力例：
# end_other('Hiabc', 'abc') → True
# end_other('AbC', 'HiaBc') → True
# end_other('abc', 'abXabc') → True