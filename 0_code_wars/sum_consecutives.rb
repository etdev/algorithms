# http://www.codewars.com/kata/55eeddff3f64c954c2000059/
# --- iteration 1 ---
def sum_consecutives(s)
  current = s.first
  result = []
  s.each_with_index do |num, i|
    if num == s[i-1] && !result.empty?
      result[-1] += num
    else
      result << num
    end
  end
  result
end

# --- iteration 2 ---
def sum_consecutives(nums)
  nums.chunk { |num| num }.map{ |arr| arr.last.reduce(&:+) }
end
