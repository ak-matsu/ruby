ages = [20,56,32]

#eachは要素の配列分、処理を繰り返す。
ages.each do |age|
  puts age
end


#メソッドの使い方
#メソッドの引数としてブロックを明示的に受け取る場合には、引数名の前に&をつけます。
#受け取ったブロックを実行する場合は、callメソッドを実行
def greeting(&block)
  puts "hello"
  #yieldとはメソッドに渡されたブロックを実行するためのもの。
  yield("good afternoon")
end

greeting do |text|
  puts text
end