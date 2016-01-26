# http://www.codewars.com/kata/55d410c492e6ed767000004f
# --- iteration 1 ---
def vowel_2_index(str)
  str.chars.map.with_index { |chr, i| /[aeiou]/i === chr ? i+1 : chr }.join
end


