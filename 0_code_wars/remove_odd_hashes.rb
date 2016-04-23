# http://www.codewars.com/kata/521d8d1a123ebb5a8900008a
# --- iteration 1 ---
def remove_odd_hashes(array, key_1, key_2)
  array.reject{ |hsh| (hsh[key_1] + hsh[key_2]).odd? }
end

