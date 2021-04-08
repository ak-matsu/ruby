# 問題.1
# 配列にある値の中から偶数の数をカウントして出力するメソッドを作りましょう。

# 出力例：
# count_evens([2, 1, 2, 3, 4]) → 3
# count_evens([2, 2, 0]) → 3
# count_evens([1, 3, 5]) → 0

def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end
  end
  puts count
end

count_evens([2, 1, 2, 3, 4])
count_evens([2, 2, 0]) 
count_evens([1, 3, 5])