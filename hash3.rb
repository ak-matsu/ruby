# ある映画のハッシュを定義し、格納されている「title」(タイトル）
# 「genre」(ジャンル)・「year」(公開年)の三つの要素の中から
# 一つを取り出すプログラムを作成してください。

# 定義する変数
# ①movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

# ②ユーザーが入力するキーを、getsメソッドを利用し定義しましょう

# ※ハッシュを定義する記述方法は幾つかあります。本問題では、ハッシュロケットを用いて定義された場合のハッシュについて、取り扱い方を復習しましょう。

# 実行結果
# 例：「title」の要素を取り出したい場合

# # デスクトップに移動
# %cd Desktop
# # Rubyファイルを実行
# %ruby argument_test.rb
#  "以下から一つを選んで入力してください。
# ・title
# ・genre
# ・year"
# #「title」を入力
# title
# ハリーポッター

def movie_info(movie,info)
  puts movie[info]
end

movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

puts "以下から一つを選んで入力してください。
 ・title
 ・genre
 ・year"

  info = gets.chomp
  movie_info(movie,info)