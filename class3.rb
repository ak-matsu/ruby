ターミナルの結果
著者: 阿部
タイトル: Rubyの素晴らしさについて
本文: Awesome Ruby!



class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

end

# "阿部","Rubyの素晴らしさについて","Awesome Ruby!"
ariticle = Article.new("著者","タイトル","本文")
puts author