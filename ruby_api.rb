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

def check_name(str)
  if str.include?(".")
    puts "!エラー!記号は登録できません"
  elsif str.include?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録完了"
  end
end
puts "登録したい名前を入力してください"
str = gets.to_s
check_name(str)