def post_item(a_cart)
  # 商品名、値段、個数を入力させ合計金額を出し、配列に保存してください。
    puts "商品名を入力してください："
    puts "値段を入力してください："
    puts "個数を入力してください："
  
    line = "---------------------------"
  
  # 入力された値の描画
    puts "商品名 : "
    puts "値段 : "
    puts "個数 : "
    puts "合計金額 : "
  
  # 配列オブジェクトに追加
  
  # a_cartをメソッドの呼び出し元に返す
  
  end
  
  def check_items(a_cart)
  # 保存された全商品の一覧を表示
  # 商品名、値段、個数を表示
  
  # 全ての商品の合計金額を表示
    puts "合計金額 : "
  
  end
  
  def end_program
    # プログラムを終了する記述
  end
  
  def exception
    puts "入力された値は無効な値です"
  end
  
  cart = []             # 配列オブジェクトcartの生成
  
  while true do
  # メニューの表示
    puts "商品数: #{cart.length}"
    puts "[0]商品をカートに入れる"
    unless cart.empty?       #カートに商品がない場合は[1]は選択できない
      puts "[1]カートを確認する"
    end
    puts "[2]アプリを終了する"
    input = gets.to_i
  
    if input == 0 then
      cart = post_item(cart)  # post_itemメソッドの呼び出し
    elsif input == 1 then
      check_items(cart) # check_itemsメソッドの呼び出し
    elsif input == 2 then
      end_program     # end_programメソッドの呼び出し
    else
      exception           # exceptionメソッドの呼び出し
    end
  end