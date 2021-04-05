# 任意の文字列で
# "hi"がいくつあるか数えてその数を出力するメソッドを作りましょう。


# 出力例：
# count_hi('abc hi ho') → 1
# count_hi('ABChi hi') → 2
# count_hi('hihi') → 2

s = "foobarbazfoobarbaz"

  # if s.scan("ba") == s.scan("ba")
  #   count += 1 
  #   puts count
  # end

s.scan("ba") do |mached|
  puts mached
end