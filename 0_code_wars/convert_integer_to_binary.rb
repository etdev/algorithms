# http://www.codewars.com/kata/55606aeebf1f0305f900006f
# --- iteration 1 ---
def to_binary(n)
  if n < 0
    (n.abs - 1).to_s(2).chars.map{ |x| x == "0" ? "1" : "0" }.join.rjust(32, "1")
  else
    n.to_s(2)
  end
end

