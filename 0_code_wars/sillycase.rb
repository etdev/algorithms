# http://www.codewars.com/kata/552ab0a4db0236ff1a00017a
# --- iteration 1 ---
def sillycase(str)
  str.chars.map.with_index do |chr, i|
    i >= (str.size.to_f / 2).ceil ? chr.upcase : chr.downcase
  end.join
end


