# 問題
# 以下の配列から、数を探して何番目に含まれているか結果を返すメソッドをsearchとeach_with_indexを用いて作成してください。
# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

def search(taraget_num,input)

  input.each_with_index do |num, index|
      if num == taraget_num
        puts "#{index +1}番目にあります。"
        return
      end
    end
    puts "その数は含まれていません。"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
puts "数字を入力してください"
num = gets.to_i
search(num,input)