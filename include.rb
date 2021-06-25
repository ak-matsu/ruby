# 以下の要件を満たすinclude_cat_and_dog?メソッドを実装しましょう。

# 任意の文字列にcatとdogの文字列が含まれている場合は、Trueを出力する
# 任意の文字列にcatとdogの文字列が含まれていない場合は、Falseを出力する


def include_cat_and_dog?(str)
  # 処理を記述
  if str.include?("cat") && str.include?("dog")
    puts true
  else
    puts false
  end
end

# 呼び出し例
include_cat_and_dog?("dogpopon")
include_cat_and_dog?("dogmopcat")