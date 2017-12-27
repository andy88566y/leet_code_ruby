def is_palindrome(x)
  if x<0
    return false
  end
  x.to_s.reverse.to_i == x
end

puts is_palindrome(1)
puts is_palindrome(100)
puts is_palindrome(101)
puts is_palindrome(-101)
