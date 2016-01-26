# http://www.codewars.com/kata/52ab60b122e82a6375000bad
# --- iteration 1 ---
def sort_reindeer(names)
  names.sort_by{ |name| name.split[1] }
end


