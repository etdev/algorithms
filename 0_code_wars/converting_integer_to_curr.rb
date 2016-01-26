# http://www.codewars.com/kata/54e9554c92ad5650fe00022b
# --- iteration 1 ---
def to_currency(n)
  n.to_s.reverse.chars.each_slice(3).map(&:join).join(",").reverse
end

# --- iteration 2 ---
def to_currency(number)
  number.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

