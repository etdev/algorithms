# http://www.codewars.com/kata/566fc12495810954b1000030
# --- iteration 1 ---
def nb_dig(n, d)
  (0..n).reduce("") do |k_arr, k|
    k_arr << (k * k).to_s
  end.count(d.to_s)
end

