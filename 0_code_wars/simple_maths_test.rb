# http://www.codewars.com/kata/5507309481b8bd3b7e001638
# --- iteration 1 ---
def number_property(n)
  [is_prime?(n), n.even?, n % 10 == 0]
end

def is_prime?(n)
  return false if n <= 1
  return true if n == 2
  (2..Math.sqrt(n).ceil).each { |x| return false if n % x == 0 }
  true
end

