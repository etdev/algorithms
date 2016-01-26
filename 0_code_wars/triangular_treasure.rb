# http://www.codewars.com/kata/525e5a1cb735154b320002c8
# --- iteration 1 ---
def triangular(n)
  n > 0 ? (1..n).reduce(&:+) : 0
end

# --- iteration 2 ---
def triangular(n)
  (1..n).reduce(0, &:+)
end

