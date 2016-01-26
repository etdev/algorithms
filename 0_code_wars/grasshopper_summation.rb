# http://www.codewars.com/kata/55d24f55d7dd296eb9000030
# --- iteration 1 ---
def summation(num)
  (1..num).reduce(&:+)
end

# --- iteration 2 ---
def summation(num)
  num * (num + 1) / 2
end

# --- iteration 3 ---
def summation(n)
  n * (n + 1) / 2
end

