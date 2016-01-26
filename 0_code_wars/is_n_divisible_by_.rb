# http://www.codewars.com/kata/558ee8415872565824000007
# --- iteration 1 ---
def is_divisible(n, *remaining)
  remaining.reduce(0){ |acc, x| acc + n.fdiv(x) } % 1 == 0
end

