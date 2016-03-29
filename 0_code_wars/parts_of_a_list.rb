# http://www.codewars.com/kata/56f3a1e899b386da78000732/ 
# --- iteration 1 ---
def partlist(arr)
  (0..arr.size-2).map { |n| [arr[0..n].join(" "), arr[(n+1)..-1].join(" ")] }
end
