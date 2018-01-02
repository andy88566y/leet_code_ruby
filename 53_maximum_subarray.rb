# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  return nums.first if nums.length == 1
  prefix_arr = []
  pre_sum = 0
  nums.each do |n|
    tmp_sum = n + pre_sum
    if tmp_sum > 0
      prefix_arr.push(tmp_sum)
      pre_sum = tmp_sum
    else
      prefix_arr.push(n)
      pre_sum = 0
    end
  end
  # puts prefix_arr.class
  # puts prefix_arr
  # puts prefix_arr.max
  prefix_arr.max
end



arr1 = [-2,1,-3,4,-1,2,1,-5,4]
arr2 = [-1]
puts max_sub_array(arr1)
puts max_sub_array(arr2)

arr1 = [-2, 1,-3,4,-1,2,1,-5,4]
prea = [0 , 1, 0,4, 3,5,6, 1,5]


