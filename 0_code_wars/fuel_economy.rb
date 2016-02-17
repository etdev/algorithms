# http://www.codewars.com/kata/558aa460dcfb4a94c40001d7/
# --- iteration 1 ---
def mpg2lp100km(mpg)
  (((mpg * 1.609344 * 1.fdiv(3.785411784)) ** (-1)) * 100).round(2)
end

def lp100km2mpg(lp100km)
  (((lp100km ** (-1)) * 100) * (0.62137119223) * (3.785411784)).round(2)
end
