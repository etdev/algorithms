# http://www.codewars.com/kata/563cf89eb4747c5fb100001b
# --- iteration 1 ---
def remove_smallest(nums)
  nums.tap{ |x| x.delete_at(nums.index(nums.min) || 0) }
end

