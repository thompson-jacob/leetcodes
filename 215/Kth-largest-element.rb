def find_kth_largest(nums, k)
  nums = nums.sort
  nums[-k]
end

# Initial solution using sort, still need to find unsorted solution

# TODO: finish unsorted
# def find_kth_largest(nums, k)
#   min_heap = []
#   (nums.length - 1).times do |i|
#   min_heap.push(i)  
#   nums.length
#   nums.length - k
#   end
  
# end

