# http://www.codewars.com/kata/55d277882e139d0b6000005d
# --- iteration 1 ---
def find_average(nums)
  nums.empty? ? 0 : nums.map(&:to_f).reduce(&:+) / nums.length
end

