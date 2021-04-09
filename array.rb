# pencil_case = ["ペン","消しゴム","定規"]
# puts pencil_case.length

# pencil_case << "えんぴつ"
# pencil_case << "付箋"
# puts pencil_case.length

# 問題.1
# 配列内に1,2,3が全て入っていれば「True」それ以外は「False」と
# 出力されるメソッドを作りましょう。

# 呼び出し方
# array123(nums)

# 出力例
# array123([1, 1, 2, 3, 1]) → True
# array123([1, 1, 2, 4, 1]) → False
# array123([1, 1, 2, 1, 2, 3]) → True

array = ["foo", "bar"]
puts array.include?("bar")
#=> true
puts array.include?("hoge")
#=> false

def array123(nums)
  if test
    
  end
end