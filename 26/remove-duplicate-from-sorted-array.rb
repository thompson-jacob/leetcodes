# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  num_uniqs = nums.length
  return  if nums.length == 1
  (nums.length - 1).downto(0) do |i|
    #Start at end to avoid problems with iterator upon deletion
    if nums[i - 1] == nums[i] 
      nums.delete_at(i - 1)
      num_uniqs -= 1
      return if nums.length == 1
    end  
  end
  
  num_uniqs
end

