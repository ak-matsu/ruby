# 今日の曜日を表示するコードをDateクラスを使用して記述してください。

# ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。

# （出力内容）
# 「今日は月曜日」
# 「今日は金曜日だ ！！！」

require "date"
day = Date.today.wday

days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if day == 5
  puts "今日は#{days[day]}だ！！！"
else
  puts "今日は#{days[day]}"
end