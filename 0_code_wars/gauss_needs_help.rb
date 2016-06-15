# https://www.codewars.com/kata/54df2067ecaa226eca000229/train/ruby
# --- iteration 1 ---
def f(n)
  return false unless n.is_a?(Integer) && n > 0
  (n * (n + 1)) / 2
end
