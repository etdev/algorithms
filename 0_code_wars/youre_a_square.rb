# http://www.codewars.com/kata/54c27a33fb7da0db0100040e
# --- iteration 1 ---
def is_square(x)
  return false if x < 0
  return true if x < 2
  (1..Math.sqrt(x)).each do |n|
    return true if n*n == x
  end
  false
end

# --- iteration 2 ---
def is_square(x)
  x < 0 ? false: Math.sqrt(x) % 1 == 0
end

# --- iteration 3 ---
def is_square(x)
  x >= 0 && Math.sqrt(x) % 1 == 0
end

