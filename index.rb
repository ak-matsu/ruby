# 任意の文字列に"code"が、左から何文字目に出てくるかを返し、
# その数を出力するメソッドを作りましょう。

# count_code("codexxcode") → 1
# count_code("aaacodebbb") → 4
# count_code("cozexxcode") → 7

# str.index(検索したい文字列, [検索を開始する位置])

def count_code(str)
  puts str.index("code") + 1
end

count_code("codexxcode")
count_code("aaacodebbb")
count_code("cozexxcode")


text = "プログラミングを学ぼう"

# 文字列「Progateで」と変数textを連結して、出力してください
puts "Progateで" + text

length = 8
width = 9

# 変数lengthと変数widthを掛けて出力してください
puts length * width

languages = ["日本語", "英語", "スペイン語"]

# インデックス番号が1の要素を出力してください
puts languages[1]

# インデックス番号が0の要素を使って「◯◯を話せます」となるように出力してください
puts languages[0] + "を話せます"

def introduce
  puts "こんにちは"
  puts "私はにんじゃわんこです"
  puts "14歳です"  
end

puts "-----自己紹介-----"
introduce

# print_infoメソッドを定義してください
def print_info
  puts "わんこでんきへようこそ！"
  puts "今日はヘッドホンがセール中です！"
end
# print_infoメソッドを呼び出してください
print_info

city = "新宿区"
prefecture = "東京都"
puts "#{city} #{prefecture}"

str = "tokyo,shinjuku"
array = str.split(",").join
puts array

class Word < String
  def palindrome?
    self == self.reverse
  end
end

s = Word.new("level") #新しいWordを作成、"level"で初期化
puts s.palindrome? #Wordが回分か調べるメソッド
puts s.length #WordはStringで扱える全てのメソッドを継承


class String
  def shuffle
    #   self.split('').shuffle.join
    #   selfを削除しても動作可能
    .split('').shuffle.join
  end
 end
puts "foobar".shuffle

# test
# test
# test