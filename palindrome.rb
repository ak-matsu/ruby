class Word < String
  def palindrome?
    self == self.reverse
  end
end

s = Word.new("level")

puts s,s.palindrome?,s.length
# puts s.palindrome?
# puts s.length