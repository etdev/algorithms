# http://www.codewars.com/kata/5708f682c69b48047b000e07
# --- iteration 1 ---
def multiply(n)
  n * ( 5 ** n.to_s.delete("^0-9").chars.count)
end

