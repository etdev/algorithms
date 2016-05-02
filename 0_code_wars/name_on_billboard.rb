# http://www.codewars.com/kata/570e8ec4127ad143660001fd
# --- iteration 1 ---
def billboard(name, price = 30)
  name.chars.reduce(0) { |acc, _chr| acc + price }
end

