# http://www.codewars.com/kata/55eea63119278d571d00006a
# --- iteration 1 ---
def next_id(arr)
  indices = arr.each_index.to_a
  (indices - arr).empty? ? arr.size : (indices - arr).min
end

# --- iteration 2 ---
def next_id(arr)
  ((0..arr.size).to_a - arr).min
end

