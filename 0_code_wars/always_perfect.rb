# http://www.codewars.com/kata/always-perfect/
# --- iteration 1 ---
def check_root(str)
  return "incorrect input" unless /\A-?\d+,-?\d+,-?\d+,-?\d+\z/ === str
  nums = str.split(",").map(&:to_i)
  return "not consecutive" unless (nums.first..nums.last).to_a == nums
  sum = nums.reduce(:*) + 1
  "#{sum}, #{Math.sqrt(sum).to_i}"
end
