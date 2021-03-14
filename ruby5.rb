# エラー原因を解決せよ

# 原因
# メソッドの外側で定義した変数は、メソッドの内側では使えない。
# そのため、1行目のpriceはcalculate_price_with_taxメソッドの中では
# 使えずにエラーが起きてしまった。

# 実引数と仮引数を使う必要がある。
price = 300

def calculate_price_with_tax(price)
  tax = 0.1
  puts price + price * tax
end

calculate_price_with_tax(price)