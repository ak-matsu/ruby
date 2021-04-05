# 任意の文字列で
# "hi"がいくつあるか数えてその数を出力するメソッドを作りましょう。


# 出力例：
# count_hi('abc hi ho') → 1
# count_hi('ABChi hi') → 2
# count_hi('hihi') → 2


def count_hi(str)
  puts str.scan("hi").length
end

count_hi('abc hi ho')
count_hi('ABChi hi')
count_hi('hihi')