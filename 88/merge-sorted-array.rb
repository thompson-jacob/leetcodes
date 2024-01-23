# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)

  #nums1 length m
  #nums2 length n
   return nums1 if n == 0
   if m == 0 
    nums1.pop(nums2.length)
    nums1 = nums1.concat(nums2)
    return nums1
   end

   num_m_count = 0

  (m + n).times do |i|
    if nums2.first >= nums1[i]
        num_m_count += 1
        if num_m_count == m
          nums1.pop(nums2.length)
          nums1 = nums1.concat(nums2)
          return nums1
        end
        next
    else
      nums1.insert(i, nums2.first)
      nums1.pop

      nums2 = nums2.drop(1)

       if nums2.length == 0
        return nums1
       end
    end
  end
  nums1
  
end