# http://www.codewars.com/kata/55da6c52a94744b379000036/
# --- iteration 1 ---
def sum_from_string(str)
  str.scan(/\d+/).reduce(0) { |acc, el| acc + el.to_i }
end
