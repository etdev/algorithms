# http://www.codewars.com/kata/5436f26c4e3d6c40e5000282
# --- iteration 1 ---
def sum_of_n(n)
  result_arr = (0..n.abs).map do |x|
    (0..x.abs).reduce(:+)
  end
  n > 0 ? result_arr : result_arr.map{ |x| -x }
end

# --- iteration 2 ---
def sum_of_n(n)
  sum = 0
  (0..n.abs).map { |x| n > 0 ? sum += x : sum -= x }
end

