# http://www.codewars.com/kata/555a67db74814aa4ee0001b5
# --- iteration 1 ---
def test_even(n)
   n.even? rescue false
end

# --- iteration 2 ---
def test_even(n)
  n.round.even?
end

