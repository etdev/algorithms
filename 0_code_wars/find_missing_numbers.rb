# http://www.codewars.com/kata/find-missing-numbers/
# --- iteration 1 ---
def find_missing_numbers(arr)
  Range.new(*arr.minmax).to_a - arr rescue []
end
