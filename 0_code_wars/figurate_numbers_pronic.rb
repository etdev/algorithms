# http://www.codewars.com/kata/55b1e5c4cbe09e46b3000034
# --- iteration 1 ---
def is_pronic(n)
  factors = (1..n).select{ |x| n % x == 0 }.map{ |x| [x, n / x] }
  n == 0 ? true : factors.any?{ |(x, y)| y == x + 1 }
end

# --- iteration 2 ---
def is_pronic(n)
  (0..n).each { |x| return true if (x * (x + 1)) == n }; false
end

# --- iteration 3 ---
def is_pronic(n)
  (0..(Math.sqrt(n.abs).ceil)).any? { |x| x * (x+1) == n }
end

# --- iteration 4 ---
def is_pronic(num)
  (0..num/2).any? { |x| x * (x+1) == num }
end

