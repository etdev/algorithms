# http://www.codewars.com/kata/53573877d5493b4d6e00050c/
# --- iteration 1 ---
def capital(capitals_hsh_arr)
  capitals_hsh_arr.map do |hsh|
    hsh_arr = hsh.to_a.sort_by{ |x| x[0].to_s == "capital" ? 0 : 1 }
    "The capital of #{hsh_arr[1][1]} is #{hsh_arr[0][1]}"
  end
end
