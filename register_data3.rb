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

# 2
# 追加する仕様
# ・[1]の処理
# 　これから走る距離(km)をユーザーに入力を行って貰う
# 　これから走る距離に対して何L(リットル)ガソリンを消費するか出力を行う

# 必要な知識
# roundメソッド

# 引数で指定した桁数まで数値を四捨五入する

# 3
# 追加する仕様
# ・[1]の処理
# 入力された乗車人数に対して、あと何人乗ることが出来るのか、何人定員オーバーなのか出力を行う


def register_data(cars)
  puts "車種の入力をして下さい。"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい。"
  fuel_economy = gets.to_f
  puts "乗車可能人数を入力して下さい。"
  capacity = gets.to_i
  car = { type: type, fuel_economy: fuel_economy, capacity: capacity }
  cars << car
end

def show_cars(cars)
  cars.each_with_index do |car, index|
    puts "[#{index}]: #{car[:type]}"
  end
  puts "確認したい番号を入力して下さい。"
  input = gets.to_i
  car = cars[input]
  if car
    show_data(car)
  else
    puts "該当する番号はありません。"
  end
end

def show_data(car)
  puts "車種:#{car[:type]}"
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  puts "これから乗る人数を入力して下さい。"
  input_capacity = gets.to_i

  calculate_fuel_consumption(car, input_distance)
  car_capacity(car, input_capacity)
end

def calculate_fuel_consumption(car, distance)
  fuel_consumption = distance / car[:fuel_economy]
  puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"
end

def car_capacity(car, capacity)
  capacity = car[:capacity] - capacity

  if capacity == 0
    puts "車の定員丁度です。"
  elsif capacity > 0
    puts "後、車には#{capacity}人乗ることができます。"
  else
    puts "#{capacity.abs}人定員オーバーです。"
  end
end

cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"
  input = gets.chomp

  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end