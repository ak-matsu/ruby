# 仕様
# ・実行すると [0] : 登録する, [1] : データを確認する, [2] : 終了する という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う。
# ・ [0]の処理
# 　データの登録という文字列を表示させる
# ・ [1]の処理
# 　データの閲覧という文字列を表示させる
# ・ [2]の処理
# 　 アプリケーションを終了する
# ・ [2]でアプリケーションを終了するまで処理を繰り返す
# ・選択肢以外の値を入力された場合の処理
# 　無効な値ですと表示し、再度選択肢を表示する


# 追加機能
# ・[0]の処理
# ユーザーに名前、年齢、身長（m単位）、体重の入力を求め、
# ハッシュと配列を使ってデータを登録する
# （前回表示させていた文字列は削除してください）
# ・ [1]の処理
# 登録したデータから名前を一覧で出力し、見たい人の番号を選択してもらう
# 選択された番号のデータ（名前、年齢、身長、体重）を一覧で出力する
# （前回表示させていた文字列は削除してください）

# 出力例
# 見たい人の番号を選択してください
# 1:山田
# 2:佐藤
# 3:鈴木
# 1  (#1を選択)
# 名前:山田
# 年齢:19
# 身長:1.7
# 体重:60.0

# BMIの計算方法
# BMI=体重÷身長÷身長

# 仕様
# ・実行すると [0] : 登録する, [1] : データを確認する, [2] : 終了する という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う
# ・ [0]の処理
# 1. 名前、年齢、身長、体重を入力させる
# 2. '身長と体重からBMIを割り出す' 名前、年齢、身長、体重、'BMI'を保存する
# ・ [1]の処理
# 1. 投稿された情報から番号と名前で一覧を表示し（例 [1]山田）、見たい個人の番号の入力を求める
# 2. 入力された個人の名前、年齢、身長、体重、'BMI'を表示する
# ・ [2]の処理
# 1. アプリケーションを終了する
# ・ [2]でアプリケーションを終了するまで、投稿や閲覧ができるように繰り返す


def register_data(data)
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.chomp
  puts "身長を入力してください（m単位）"
  tall = gets.to_f
  puts "体重を入力してください"
  weight = gets.to_f
  person = { name: name, age: age, tall: tall, weight: weight, bmi: calculate_bmi(tall, weight)}
  data << person
end

def calculate_bmi(tall, weight)
  bmi = weight / tall / tall
end

def show_data_list(data)
  puts "見たい人の番号を選択してください"
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  show_data(data[input])
end

def show_data(data)
  puts "名前:#{data[:name]}"
  puts "年齢:#{data[:age]}"
  puts "身長:#{data[:tall]}"
  puts "体重:#{data[:weight]}"
  puts "BMI:#{data[:bmi]}"
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