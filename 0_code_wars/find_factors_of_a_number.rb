# http://www.codewars.com/kata/564fa92d1639fbefae00009d
# --- iteration 1 ---
def factors(x)
  return -1 unless x.is_a?(Integer) && x >= 1
  (1..Math.sqrt(x)).each_with_object([]) do |i, factors|
    factors.concat([i, x/i]) if x % i == 0
  end.uniq.sort.reverse
end

# --- iteration 2 ---
def factors(x)
  return -1 unless x.is_a?(Integer) && x >= 1
  x.downto(1).select{ |i| x % i == 0 }
end

