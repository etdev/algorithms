# http://www.codewars.com/kata/534d0a229345375d520006a0
# --- iteration 1 ---
def power_of_two?(x)
  loop do
    x = x.fdiv(2)
    if x == 1
      return true
    elsif x < 1
      return false
    end
  end
end

# --- iteration 2 ---
def power_of_two?(x)
  loop { x = x.fdiv(2); break x == 1 if x <= 1 }
end

# --- iteration 3 ---
def power_of_two?(x)
  x.to_s(2).count("1") == 1
end

# --- iteration 4 ---
def power_of_two?(n)
  n == 0 ? false : n & (n - 1) == 0
end

