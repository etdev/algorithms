# http://www.codewars.com/kata/5412509bd436bd33920011bc
# --- iteration 1 ---
def maskify(cc)
  cc.length > 4 ? cc[-4,4].rjust(cc.length, "#") : cc
end

