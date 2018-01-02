# @param {Integer[]} nums
# @return {Integer}
# O(n) without extra memory
def single_number(nums)
  h_count_num = Hash.new(".")
  h_num_count = Hash.new(0)
  nums.each do |n|
    h_num_count[n] += 1
  end
  return 0
end

arr1 = [1,1,2]
arr2 = [2]
arr3 = [3,3,4,4,5,5,6]

puts single_number(arr1)
puts single_number(arr2)
puts single_number(arr3)
