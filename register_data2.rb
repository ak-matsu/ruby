# アプリを実行すると以下の選択肢を表示し、値が入力されると対応した処理が実行される。

# 選択してください
# [0]登録する
# [1]データを確認する
# [2]終了する
# [0]を選択した場合は、 register_dataメソッドが呼び出され、以下の文字列が表示される。

# 名前を入力してください
# パンチ力を入力してください(0 ~ 100)
# キック力を入力してください(0 ~ 100)
# ジャンプ力を入力してください(0 ~ 100)
# [1]を選択した場合は、show_data_listメソッドが呼び出され、以下の文字列が表示される

# 見たい人の番号を選択してください
# [2]を選択した場合は、アプリケーションを終了する

# 選択肢以外の値が入力されると以下の文字列が表示される

# 無効な値です

# 2
# ・def register_dataメソッドで情報を入力させ、ハッシュに格納したあと、配列に格納するコードを書きましょう。
# 　登録する情報は、名前,パンチ力,キック力,ジャンプ力です。
# 　力は1~100までの数値で入力させます。
# 　1~100以外の値が入力された場合は”100以下の数字を入力してください”と表示し、入力フェーズに戻るようにします。
# ・show_data_listメソッドで、登録した情報から名前だけを取り出して一覧表示させましょう。

# 3
# 追加仕様
# パンチ力,キック力,ジャンプ力の３つの力の合計を戦闘力とし、hero_rank メソッドを作成してABCDの４段階にランク分けします。（範囲は任意で構いません）

# ヒーローランクは、一覧表示で名前,パンチ力,キック力,ジャンプ力と一緒に表示されるようにします。

def register_data(data)

  puts '名前を入力してください'
  name = gets.chomp
  puts 'パンチ力を入力してください(0 ~ 100)'
  punch = power(gets.to_i)
  puts 'キック力を入力してください(0 ~ 100)'
  kick = power(gets.to_i)
  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = power(gets.to_i)

  person = {name: name, punch: punch, kick: kick, jump: jump,  rank: hero_rank(punch, kick, jump)}
  data << person

end

def power(power)
    while power > 100
      puts '100以下の数字を入力してください'
        power = gets.to_i
    end
    return power
end


def hero_rank(punch, kick, jump)

  power = punch + kick + jump
  if power == 300
    rank = 'A'
  elsif 100 <= power && power < 300
    rank = 'B'
  elsif 20 <= power && power < 100
    rank = 'C'
  else
    rank = 'D'
  end

end

def show_data_list(data)

  puts '見たい人の番号を選択してください'
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end

  input = gets.to_i - 1
  person = data[input]
  puts "名前: #{person[:name]}"
  puts "パンチ力: #{person[:punch]}"
  puts "キック力: #{person[:kick]}"
  puts "ジャンプ力: #{person[:jump]}"
  puts "ヒーローランク: #{person[:rank]}"

end


data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end