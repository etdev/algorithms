# http://www.codewars.com/kata/55563df50dda59adf900004d
# --- iteration 1 ---
def validate_ean(c)
  num, chksum = c[0..-2].chars.map(&:to_i), c[-1].to_i
  sum = num.map.with_index{ |x, i| i.odd? ? x * 3 : x }.reduce(:+)
  sum % 10 == 0 ? (chksum == 0) : (10 - (sum % 10)) == chksum
end
