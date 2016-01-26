# http://www.codewars.com/kata/559d7951ce5e0da654000073
# --- iteration 1 ---
def alternate_sq_sum(arr)
  arr.map!.with_index { |x, i| i.even? ? x : x ** 2 }
    .reduce(0, :+)
end


