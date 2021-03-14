# 今日の曜日を表示するコードをDateクラスを使用して記述してください。

# ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。

# （出力内容）
# 「今日は月曜日」
# 「今日は金曜日だ ！！！」

require "date"

day = Date.today.wday

case day
when 1
  puts "月曜日"
when 2
  puts "火曜日"
when 3
  puts "水曜日"
when 4
  puts "木曜日"
when 5
  puts "金曜日 !!"
when 6
  puts "土曜日"
when 7
  puts "日曜日"
end