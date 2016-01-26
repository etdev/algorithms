# http://www.codewars.com/kata/5583090cbe83f4fd8c000051
# --- iteration 1 ---
def digitize(n)
  n.to_s.chars.map(&:to_i).reverse
end

