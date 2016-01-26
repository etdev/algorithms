# http://www.codewars.com/kata/5566b0dd450172dfc4000005
# --- iteration 1 ---
def length_of_sequence(arr,n)
  return 0 if arr.length < 2 || arr.count(n) != 2
  start_idx, end_idx = [nil, nil]
  arr.each_with_index do |el, i|
    if el == n
      start_idx ||= i
      start_idx && end_idx = i
    end
  end
  (end_idx - start_idx) + 1
end

# --- iteration 2 ---
def length_of_sequence(arr,n)
  return 0 unless arr.length > 1 && arr.count(n) == 2
  arr.rindex(n) - arr.index(n) + 1
end

# --- iteration 3 ---
def length_of_sequence(arr,n)
  return 0 unless arr.count(n) == 2
  arr.rindex(n) - arr.index(n) + 1
end

