# http://www.codewars.com/kata/54d418bd099d650fa000032d
# --- iteration 1 ---
def vampire_test(a,b)
  product_digits = (a*b).to_s.split("")
  a_digits, b_digits = a.to_s.split(""), b.to_s.split("")
  return false if product_digits.sort != (a_digits + b_digits).sort
  true
end

