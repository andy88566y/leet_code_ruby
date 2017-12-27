def f(x)
  # puts x
  if x > 0
    x
  else
    x += 1
    f(x)
  end
end

puts f(1)
puts f(10)
puts f(-10)
