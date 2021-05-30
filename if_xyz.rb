# 問題.1
# 文字列"xyz"を含む任意の文字列があるとします。

# 以下条件を満たすメソッドを作成しましょう。

# 連続する文字列"xyz"の直前に、ピリオド（.）がない場合はTrueを出力
# 連続する文字列"xyz"の直前に、ピリオド（.）がある場合はFalseを出力
# 上記2つの条件に当てはまらない場合はFalseを出力
# xyzが連続して存在しない文字列も想定します。（例：'azbycx'）
# 詳細は、以下の出力例を確認してください。

# 出力例：
# xyz_there('abcxyz') → True
# xyz_there('abc.xyz') → False
# xyz_there('xyz.abc') → True
# xyz_there('azbycx') → False
# xyz_there('a.zbycx') → False

# ヒント
# include?メソッドを使いましょう。

# include?
# include?メソッドは指定した要素が、配列または文字列に含まれているかを判定するメソッドです。

# str = "foobar"
# puts str.include?("bar")
# #=> true
# puts str.include?("hoge")
# #=> false
# include?メソッドの詳細は公式リファレンスを確認しましょう。

# Arrayのinclude?メソッドを使用する場合
# Stringのinclude?メソッドを使用する場合

def xyz_there(str)
  if str.include?(".xyz")
    puts "false"
  elsif str.include?("xyz")
    puts "true"
  else
    puts "false"
  end

end

xyz_there('abcxyz')
xyz_there('abc.xyz')
xyz_there('xyz.abc')
xyz_there('azbycx')
xyz_there('a.zbycx')