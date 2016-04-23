# http://www.codewars.com/kata/5642bf07a586135a6f000004
# --- iteration 1 ---
def step_through_with(s)
  /(.)\1/ === s
end

# --- iteration 2 ---
def step_through_with(s)
  s.squeeze != s
end

