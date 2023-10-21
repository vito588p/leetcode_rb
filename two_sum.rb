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
  nums.each_with_index do |k, i|
      return [h[target - k], i] if h.key?(target - k)
      h[k] = i
  end
end

puts two_sum([2,7,11,15],9)
puts two_sum([3,2,4],6)
puts two_sum([3,3],6)