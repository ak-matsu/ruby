def police_trouble(a,b)
  if a && b
    puts true
  elsif a || b
    puts true
  elsif !a
    puts false
  end
end


police_trouble(true,false)
police_trouble(false,false)
police_trouble(true,true)