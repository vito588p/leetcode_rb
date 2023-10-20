# Two Sum

# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]

# Example 2:
# Input: nums = [3,2,4], target = 6
# Output: [1,2]

# Example 3:
# Input: nums = [3,3], target = 6
# Output: [0,1]

def two_sum(nums, target)
  h = {}
  nums.each.with_index do |k, i|
      return [h[target - k], i] if h.key?(target - k)
      h[k] = i
  end
end