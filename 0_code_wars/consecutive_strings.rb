# http://www.codewars.com/kata/56a5d994ac971f1ac500003e
# --- iteration 1 ---
def longest_consec(str_arr, k)
  return "" if str_arr.size == 0 || str_arr.size < k || k <= 0
  max_length = 0
  max_combined_str = ""
  combined_strs = str_arr.each_cons(k).each do |str_ktuple|
    combined_str = str_ktuple.join
    if combined_str.length > max_length
      max_combined_str = combined_str
      max_length = combined_str.length
    end
  end
  max_combined_str
end

# --- iteration 2 ---
def longest_consec(str_arr, k)
  return "" if str_arr.size == 0 || str_arr.size < k || k <= 0
  str_arr.each_cons(k).map(&:join).max_by(&:size)
end

