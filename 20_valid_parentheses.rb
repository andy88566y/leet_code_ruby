# @param {String} s
# @return {Boolean}
def is_valid(s)
  return false if s.nil? || s.length == 0

  hash_of_p = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }


  stack = []
  s.each_char do |i|
    if hash_of_p[i]
      stack.push(i)
    elsif hash_of_p[stack.last] == i
      stack.pop
    else
      return false
    end
  end
  stack.length.zero?
end


puts is_valid("()")
puts is_valid("()()")
puts is_valid("[()()]")
puts is_valid("([)]")
puts is_valid("[")
puts is_valid("[[")
