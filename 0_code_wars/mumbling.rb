# http://www.codewars.com/kata/5667e8f4e3f572a8f2000039
# --- iteration 1 ---
def accum(s)
  s.chars.map.with_index do |chr, i|
    chr.upcase << chr.downcase * (i)
  end.join("-")
end

