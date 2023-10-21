# Longest Common Prefix

# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".

# Example 1:
# Input: strs = ["flower","flow","flight"]
# Output: "fl"

# Example 2:
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

def longest_common_prefix(strs)
  strs = strs.sort
  result = ""

  0.step(strs[0].size) do |i|
    for s in strs
      if i >= s.size || s[i] != strs[0][i]
        return result
      end
    end
    result += strs[0][i]
  end
  result
end

puts longest_common_prefix(["flower","flow","flight"])
puts longest_common_prefix(["dog","racecar","car"])
puts longest_common_prefix(["dog","drass","day"])