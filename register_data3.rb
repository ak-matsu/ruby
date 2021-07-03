# ・プログラムの実行を行うと、
# [0]データの登録
# [1]データの確認
# [2]プログラムの終了
# という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う。

# ・[0]の処理
# 1.車種、1Lあたりの走行可能距離(km/l)、乗車人数の入力をユーザーに入力を行って貰う
# 2.上記の値の保存を行う

# ・[1]の処理
# 1.保存した情報から番号と名前で一覧を表示し、見たい車種の番号の入力を求める
# 2.入力された個別の車種の名前、1Lあたりの走行可能距離(km/l)、乗車人数の表示を行う

# ・[2]の処理
# 1.アプリケーションの終了

# ・[2]でアプリケーションを終了するまで、投稿や閲覧が出来るように繰り返す

# 注意
# 正しく動作している箇所までが採点対象となるため、必ず動作確認しながら進めること
# エラーはインターネットで調べるなりして解決すること
# エラーが出たままその先の実装をしないこと
# 必要な知識

# each_with_index
# 使用すると、配列のインデックス番号(配列の要素番号)が取得できる

def register_data(data)

# 1.車種、1Lあたりの走行可能距離(km/l)、乗車人数の入力をユーザーに入力を行って貰う
# 2.上記の値の保存を行う
  puts "車種を入力してください"
  syasyu = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力してください"
  distance = gets.to_f
  puts "乗車人を入力してください"
  person = gets.to_i

  car = {syasyu: syasyu, distance: distance, person: person}
  data << car

end

def show_data_list(data)
  puts "見たい人の番号を選択してください"
  data.each_with_index do |car, index|
    puts "#{index + 1}: #{car[:syasyu]}"
  end
  input = gets.to_i - 1
  show_data(data[input])
end

def show_data(data)
  puts "車種:#{data[:syasyu]}"
  puts "1Lあたりの走行可能距離:#{data[:distance]}"
  puts "乗車人数:#{data[:person]}"
end

data = []
while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end