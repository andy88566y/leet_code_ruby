def reverse(x)
  if x > 0
    x = x.to_s.reverse.to_i
    x > 2147483647 ? 0 : x
  elsif x < 0
    reverse(x * -1) * -1
  else #x == 0
    x
  end
end

puts reverse(12)
puts reverse(-12)
