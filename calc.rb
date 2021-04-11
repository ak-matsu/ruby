# 問題.1
# 二桁以上の整数を入力すると、十の位と一の位の数字の足し算、十の位と一の位の数字の掛け算をそれぞれ行い、最後に2つの結果を足し合わせて出力するプログラムをRubyで作成してください。

# ターミナルでの入力例

# sample.rb
# > 二桁の整数を入力してください
# > 15

# # 1 + 5と 1 * 5をそれぞれ計算

# > 足し算結果と掛け算結果の合計値は11です
# 以下の雛形を参考にしましょう。
# def addition(a, b)
#   # 10の位と1の位の数字に対して、足し算を行う

# end

# def multiplication(a,b)
#   # 10の位と1の位の数字に対して、掛け算を行う

# end

# def slice_num(num)
#   # 10の位の計算

#   # 1の位の計算

# end

# puts "二桁の整数を入力してください"
# input = gets.to_i

# X, Y = slice_num(input)
# #  additionメソッドにX,Yを引数として渡し、処理結果を変数add_resultに代入する。

# #  multiplicationメソッドにX,Yを引数として渡し、処理結果を変数multiple_resultに代入する。

# puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"