# http://www.codewars.com/kata/515f51d438015969f7000013
# --- iteration 1 ---
def pyramid(num)
  (1..num).reduce([]) { |acc, n| acc << [1] * n }
end

