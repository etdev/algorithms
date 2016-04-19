# http://www.codewars.com/kata/54e2213f13d73eb9de0006d2/
# --- iteration 1 ---
def pair_zeros(arr)
  zero_count = 0
  arr.map do |i|
    zero_count += 1 if i == 0
    if zero_count == 2
      zero_count = 0
      nil
    else
      i
    end
  end.compact
end
