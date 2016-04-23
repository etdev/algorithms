# http://www.codewars.com/kata/56b7771481290cc283000f28
# --- iteration 1 ---
def last_fib_digit(n)
  n = n % 60 if n > 60
  a, b = 0, 1
  n.times do
    a, b = b, (a + b) % 10
  end
  a
end

