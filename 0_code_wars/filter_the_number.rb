# http://www.codewars.com/kata/55b051fac50a3292a9000025/
# --- iteration 1 ---
def filter_string(string)
  string.tr("^0-9", '').to_i
end

# --- iteration 2 ---
def filter_string(str)
  str.delete("^0-9").to_i
end

