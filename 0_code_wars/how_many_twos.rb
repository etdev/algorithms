# http://www.codewars.com/kata/56aed5db9d5cb55de000001c/
# --- iteration 1 ---
def two_count(n)
   n.to_s(2).chars.reverse.join.split("1")[0].size rescue 0
end

# --- iteration 2 ---
def two_count(n)
  return 0 if n % 2 == 1
  two_count(n/2) + 1
end
