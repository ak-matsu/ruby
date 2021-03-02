# require "date"

# puts Date.today


require 'faker'

puts Faker::Name.name
puts Faker::Name.name
puts Faker::Name.name
puts Faker::JapaneseMedia::DragonBall.character



# 国語が80点、英語が50点、数学が70点の場合のテストの平均点をターミナルに出力するプログラムを記述してください。

# 条件1：このプログラムでは各教科の点数を変数を使って定義してください。
# 条件2：出力結果は以下のようになるようにコードを書きましょう。

koku = 80
english = 50
su = 70
total = koku + english + su
puts "3教科の平均点は、#{total/3} 点です。"