# http://www.codewars.com/kata/528e95af53dcdb40b5000171
# --- iteration 1 ---
# This function should return n!
def factorial(n)
  return 1 if n == 0
  (1..n).reduce(&:*)
end

