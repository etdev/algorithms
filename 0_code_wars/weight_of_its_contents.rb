# http://www.codewars.com/kata/53921994d8f00b93df000bea
# --- iteration 1 ---
def contentWeight(bottle_weight, scale)
  multiplier = scale.split.first.to_i
  describer = scale.split.last
  denominator = multiplier + 1
  numerator = describer == "larger" ? denominator - 1 : 1
  bottle_weight * numerator.fdiv(denominator)
end

# --- iteration 2 ---
def contentWeight(btl_wght, s)
  btl_wght / (s.to_i + 1) * (s.include?("g") ? s.to_i : 1)
end

