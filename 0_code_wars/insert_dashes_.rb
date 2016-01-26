# http://www.codewars.com/kata/55c3026406402936bc000026
# --- iteration 1 ---
def insert_dash2(num)
  num.to_s.gsub(/([13579](?=[13579]))/, '\1-').gsub(/([2468](?=[2468]))/, '\1*')
end

