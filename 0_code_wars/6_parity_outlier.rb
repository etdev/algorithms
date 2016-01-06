# http://www.codewars.com/kata/find-the-parity-outlier
# --- iteration 1 ---
def find_outlier(arr)
  arr_evenness = arr.map(&:even?)
  if arr_evenness.count(true) > 1
    arr[arr_evenness.index(false)]
  else
    arr[arr_evenness.index(true)]
  end
end

# --- iteration 2 ---
def find_outlier(ints)
  evens, odds = ints.partition{ |int| int.even? }
  evens.size > odds.size ? odds.first : evens.first
end
