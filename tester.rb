def palindrome_tester(s,t)
  if s == s.reverse
    puts "It's a palindrome!"
  elsif t == t.reverse
    puts "It's not a palindrome."
  end
end

puts palindrome_tester("racecar","onomatopoeia")