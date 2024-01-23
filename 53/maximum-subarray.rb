def max_sub_array(nums)
  largest = nums[0] 
  current_sum = 0

 nums.each do |n|  
  if  current_sum + n > n
    current_sum = current_sum + n 
  else 
    current_sum = n
  end

  largest = current_sum if current_sum > largest     
end

largest
end