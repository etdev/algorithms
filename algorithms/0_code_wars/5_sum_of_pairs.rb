# http://www.codewars.com/kata/sum-of-pairs/
# --- iteration 1 ---
def sum_pairs(ints, sum)
  return nil if ints.length < 2
  seen_vals = {}
  ints.each_index do |i|
    n = sum - ints[i]
    if seen_vals["#{n}"]
      return[n, ints[i]]
    else
      seen_vals["#{ints[i]}"] = true
    end
  end
  nil
end

# --- iteration 2 ---
require 'set'
def sum_pairs(ints, sum)
  return nil unless ints.length >= 2
  seen_vals = Set.new
  ints.each_with_index do |m, idx|
    n = sum - m
    return [n, m] if seen_vals.include?(n)
    seen_vals.add(m)
  end
  nil
end
