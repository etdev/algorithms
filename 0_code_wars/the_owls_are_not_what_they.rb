# http://www.codewars.com/kata/55aa7acc42216b3dd6000022
# --- iteration 1 ---
def owl_pic(text)
  trimmed = text.upcase.delete("^8WTYUIOAHXVM")
  "#{trimmed}''0v0''#{trimmed.reverse}"
end

