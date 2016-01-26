# http://www.codewars.com/kata/55b8c0276a7930249e00003c
# --- iteration 1 ---
def encryption(str)
  str.chars.map do |x|
    x == " " ? x : $CHAR_TO_MORSE[x]
  end.join(" ")
end

