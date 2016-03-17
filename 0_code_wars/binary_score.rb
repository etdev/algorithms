# http://www.codewars.com/kata/56cafdabc8cfcc3ad4000a2b
# --- iteration 1 ---
def score(n)
  n < 2 ? n : 2**Math.log(n, 2).ceil - 1
end

# --- iteration 2 ---
def score(n)
  n < 2 ? n : 2**(n.to_s(2).size) - 1
end
