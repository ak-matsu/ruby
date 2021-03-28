# 名前を入力する機能を作成しましょう。
# 名前以外にピリオド(.)や空白があるとエラーを表示させます。

# Arrayのinclude?メソッドを使用する場合
# a = [ "a", "b", "c" ]
# a.include?("b")       #=> true
# a.include?("z")       #=> false

# Stringのinclude?メソッドを使用する場合
# "hello".include? "lo"   #=> true
# "hello".include? "ol"   #=> false
# "hello".include? ?h     #=> true

str = "yamada "
if str.include?(".")|str.include?(" ")
  puts "含まれる"
end




# puts "名前を入力"
# input = gets.to_s

# input = gets to_s
# kinshi = [ "."," "] 

# if input == kinshi
#   puts "含まれている"
#   return
# end

# include?(input)


# input = [",","."]

# puts 