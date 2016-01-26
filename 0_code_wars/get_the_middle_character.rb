# http://www.codewars.com/kata/56747fd5cb988479af000028
# --- iteration 1 ---
def get_middle(s)
  s.length >= 2 ? s[s.length-1-(s.length/2), 2-s.length%2] : s
end

# --- iteration 2 ---
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end

