# http://www.codewars.com/kata/equal-sides-of-an-array/
# --- iteration 1 ---
def find_even_index(arr)
  total_sum = arr.reduce(&:+)
  left_sum = 0
  right_sum = total_sum
  arr.each_with_index do |el, idx|
    right_sum -= el
    left_sum += arr[idx-1] if idx > 0
    return idx if left_sum == right_sum
  end
  return -1
end

# --- iteration 2 ---
def find_even_index(arr)
  total_sum = arr.reduce(&:+)
  left_sum = 0
  right_sum = total_sum
  arr.each_index do |idx|
    left_sum += arr[idx-1] if idx > 0
    right_sum -= arr[idx]
    return idx if left_sum == right_sum
   end
  -1
end
