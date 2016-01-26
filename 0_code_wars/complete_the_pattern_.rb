# http://www.codewars.com/kata/55733d3ef7c43f8b0700007c
# --- iteration 1 ---
def pattern(n)
  return "" if n < 1
  nums = n.downto(1).to_a
  return_str = nums.join("")
  (n-1).times do |i|
    nums.slice!(-1)
    return_str << "\n#{nums.join("")}"
  end
  return_str
end

pattern(n)
  [*(1..n)].map{ |i| [*(i..n)].join }.join("\n")
end

# --- iteration 3 ---
def pattern(n)
  (1..n).map{|i| [*(i..n)].join}.join("\n")
end

