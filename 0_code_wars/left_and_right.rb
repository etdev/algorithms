# http://www.codewars.com/kata/left$-and-right$/
# --- iteration 1 ---
def left(str, i = nil)
  if i.nil?
    return str[0]
  elsif i.is_a?(String)
    return str.split(i).first
  elsif i > 0
    return str[0...i]
  elsif i < 0
    return str[0...(str.size + i)]
  end
  ""
end

def right(str, i = nil)
  left(str.reverse, (i.is_a?(String) ? i.reverse : i)).reverse
end
