# http://www.codewars.com/kata/559cc2d2b802a5c94700000c
# --- iteration 1 ---
def consecutive(arr)
  ([*((arr.min)..(arr.max))] - arr).size rescue 0
end

