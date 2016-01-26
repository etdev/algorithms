# http://www.codewars.com/kata/563cc8c1a3895d7d30000049
# --- iteration 1 ---
def mul(a, b)
  return 0 if b < 1
  return a if b == 1
  a + (mul(a, b-1))
end

# --- iteration 2 ---
def mul(a, b)
  Array.new(b, a).reduce(:+) || 0
end

