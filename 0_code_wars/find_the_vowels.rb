# http://www.codewars.com/kata/5680781b6b7c2be860000036/
# --- iteration 1 ---
def vowel_indices(word)
  word.chars.map.with_index{ |chr, i| /[aeiouy]/i === chr ? i+1 : nil }.compact
end
