# http://www.codewars.com/kata/55ee3ebff71e82a30000006a/
# --- iteration 1 ---
def title_to_number(title)
  mappings = Hash[[*"A".."Z"].zip([*"A".."Z"].join.codepoints.map{ |x| x - 64 })]
  title.upcase.reverse.chars.map.with_index { |x, i| mappings[x] * (26 ** i) }.reduce(:+)
end

# --- iteration 2 ---
def title_to_number(title)
  title.bytes.reduce(0) { |acc, n| acc * 26 + (n - 64) }
end
