# 問題.1

# puts hash.keys
# puts hash.values
# 上記のメソッドを実行した時に

# one
# two
# three
# 1
# 2
# 3
# とターミナルに表示されるような変数hashを作成するための
# コードをシンボルを使って記述してください。


hash = {:one=>1,:two=>2,:three=>3}

puts hash.keys
puts hash.values


# 問題2
# 配列の内部に、複数のユーザーの情報をハッシュとして持つ変数user_dataがあります。

# user_data = [
#  {user: {profile: {name: 'George'}}},
#  {user: {profile: {name: 'Alice'}}},
#  {user: {profile: {name: 'Taro'}}},
# ]
# user_dataを利用して、全てのユーザーの名前だけが出力されるようにRubyでコーディングしてください。
# ただし、出力結果は次のようになるものとします。

# George
# Alice
# Taro


user_data = [
  {user: {profile: {name: 'George'}}},
  {user: {profile: {name: 'Alice'}}},
  {user: {profile: {name: 'Taro'}}},
 ]

 user_data.each do |date|
  puts date[:user][:profile][:name]
 end