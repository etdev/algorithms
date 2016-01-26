# http://www.codewars.com/kata/566efcfbf521a3cfd2000056
# --- iteration 1 ---
def reverse_fun(str)
  str.reverse.chars.zip(str.chars).flatten.first(str.size).join
end

