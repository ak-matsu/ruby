# 問題
# 以下の配列から、数を探して何番目に含まれているか結果を返すメソッドをsearchとeach_with_indexを用いて作成してください。
# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]



# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# def search
#   puts ("#{input}番目にあります。")
# end
# num = gets.to_i
# search(num,input)

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# fruits = ["メロン", "バナナ", "アップル"]

num = gets.to_i

# def search
  # fruits.each_with_index do |item, i|
  input.each_with_index do |item, i|
      #  puts "#{i}番目のフルーツは、#{item}です。"
      if num == item
        puts "#{i}番目にあります。"
      else
        puts "ありません。"
      end
  end


# search(num,input)