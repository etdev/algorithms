# http://www.codewars.com/kata/557341907fbf439911000022
# --- iteration 1 ---
def pattern(n)
  return "" unless n > 0
  nums = n.downto(1)
  (1.upto(n)).reduce([]){ |acc, i| acc << nums.first(i).join }.join("\n")
end

# --- iteration 2 ---
def pattern(n)
  n.downto(1).map { |x| n.downto(x).to_a.join }.join("\n")
end
