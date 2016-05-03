# http://www.codewars.com/kata/56b18992240660a97c00000a
# --- iteration 1 ---
def permutation_average(n)
  perms = n.to_s.chars.permutation.to_a
  total_sum = perms.reduce(0) do |acc, perm|
    acc + perm.join.to_i
  end
  total_sum.fdiv(perms.count).round
end

