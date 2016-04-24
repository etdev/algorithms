# http://www.codewars.com/kata/56a4872cbb65f3a610000026
# --- iteration 1 ---
def max_rot(n)
  nums = n.to_s.chars.map(&:to_i)
  result = nums.each_index.reduce([]) do |acc, i|
    nums[i..-1] = nums[i..-1].rotate
    acc + [(nums.first(i) + nums[i..-1])]
  end << [n.to_s.chars.map(&:to_i)]
  result.map(&:join).max.to_i
end

