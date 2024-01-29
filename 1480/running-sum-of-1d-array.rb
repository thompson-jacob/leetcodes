# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  total = 0
  nums.map { |num| total += num}
end