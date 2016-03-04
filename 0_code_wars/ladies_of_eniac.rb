# http://www.codewars.com/kata/56d31aaefd3a52902a000d66/
# --- iteration 1 ---
def rad_ladies(name)
  name.delete("^a-zA-Z24680 !").upcase
end

# --- iteration 2 ---
def rad_ladies(name)
  name.upcase.delete("^A-Z !")
end
