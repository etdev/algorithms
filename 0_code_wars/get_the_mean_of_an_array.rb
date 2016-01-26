# http://www.codewars.com/kata/563e320cee5dddcf77000158
# --- iteration 1 ---
def get_average(marks)
  marks.reduce(&:+) / marks.length
end

