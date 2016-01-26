# http://www.codewars.com/kata/53dbd5315a3c69eed20002dd
# --- iteration 1 ---
def filter_list(l)
  # return a new list with the strings filtered out
  l.delete_if { |x| x.is_a?(String) }
end

