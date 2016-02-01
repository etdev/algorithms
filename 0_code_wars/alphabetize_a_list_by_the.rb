# http://www.codewars.com/kata/54eea36b7f914221eb000e2f
# --- iteration 1 ---
def sort_it(list, n)
  list.split(", ").sort_by{ |l| l[n-1] }.join(", ")
end

