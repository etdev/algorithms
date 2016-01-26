# http://www.codewars.com/kata/54fdadc8762e2e51e400032c
# --- iteration 1 ---
def my_parse_int(string)
  string.strip =~ /\A(\d+)\z/ ? $1.to_i : "NaN"
end

