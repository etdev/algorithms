# http://www.codewars.com/kata/564057bc348c7200bd0000ff/
# --- iteration 1 ---
def thirt(n)
  vals = []
  until vals.uniq != vals
    digits = n.to_s.chars.map(&:to_i).compact
    multipliers = [1, 10, 9, 12, 3, 4].cycle.first(digits.size)
    current = digits.reverse.zip(multipliers).reduce(0){ |acc, (x, y)|  acc + x*y }
    vals << current
    n = current
  end
  n
end
