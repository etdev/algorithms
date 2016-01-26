# http://www.codewars.com/kata/555eded1ad94b00403000071
# --- iteration 1 ---
def series_sum(n)
  return "%.2f" % n if n < 2
  "%.2f" % (1..n).map { |el| 1.0 / (((el-1)*3)+1) }.reduce(&:+)
end

