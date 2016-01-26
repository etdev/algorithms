# http://www.codewars.com/kata/541629460b198da04e000bb9
# --- iteration 1 ---
def last(*args)
  args.flat_map{ |x| x.is_a?(String) ? x[-1] : x }.last
end

