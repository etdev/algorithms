# http://www.codewars.com/kata/5609fd5b44e602b2ff00003a

# --- iteration 1 ---
def process_2arrays(arr1, arr2)
  [(arr1 & arr2), ((arr1 - arr2) + (arr2 - arr1)), (arr1 - arr2), (arr2 - arr1)]
    .map(&:size)
end
