# http://www.codewars.com/kata/551f37452ff852b7bd000139
# --- iteration 1 ---
def add_binary(a,b)
  (a+b).to_s(2)
end

# --- iteration 2 ---
def add_binary(a,b)
  '%b' % (a+b)
end

