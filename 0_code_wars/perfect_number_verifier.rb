# http://www.codewars.com/kata/56a28c30d7eb6acef700004d
# --- iteration 1 ---
def is_perfect(n)
  return false if n == 1

  result = (2..(Math.sqrt(n))).each_with_object([1]) do |i, factors|
    if n % i == 0
      factors << i
      factors << n/i
    end
  end

  result.reduce(:+) == n
end
