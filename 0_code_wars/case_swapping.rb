# http://www.codewars.com/kata/5590961e6620c0825000008f/
# --- iteration 1 ---
def swap(str)
  str.tr("a-zA-Z", "A-Za-z")
end

# --- iteration 2 ---
def swap(str)
  str.swapcase
end
