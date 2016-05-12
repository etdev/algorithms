# http://www.codewars.com/kata/5650ab06d11d675371000003
# --- iteration 1 ---
def split_in_parts (str, len)
  str.chars
     .each_slice(len)
     .to_a
     .map(&:join)
     .join(" ")
end
