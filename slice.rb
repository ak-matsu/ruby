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