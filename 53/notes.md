53. Maximum Subarray

Given an integer array nums, find the 
subarray
 with the largest sum, and return its sum.

 

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.
Example 2:

Input: nums = [1]
Output: 1
Explanation: The subarray [1] has the largest sum 1.
Example 3:

Input: nums = [5,4,-1,7,8]
Output: 23
Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
 

Constraints:

1 <= nums.length <= 105
-104 <= nums[i] <= 104

Notes: 
Dynamic Programming on first approach, gets solution down to O^N
Storing a current_sum variable, check that index + index[+1] is greater than index on its own, then as we iterate further continue to check if we are adding more to the current sum and not losing, when we reach a larger sub-array, store it until the largest sub-array is found.

TODO: solve again using divide & conquer method