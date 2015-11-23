# http://www.codewars.com/kata/string-suffixes/
def string_suffix(str)
 count = 0
 (0...str.size).each do |suf_idx|
   new_str = str[suf_idx..-1]
   count += new_str.each_char.with_index
     .find_index { |char, j| str[j] != char } || new_str.size
 end
 count
end
