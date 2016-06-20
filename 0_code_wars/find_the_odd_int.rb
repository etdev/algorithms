# https://www.codewars.com/kata/54da5a58ea159efa3800083
# --- iteration 1 ---
def find_it(arr)
  arr.find{ |e| arr.count(e).odd? }
end
