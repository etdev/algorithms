# http://www.codewars.com/kata/537baa6f8f4b300b5900106c
# --- iteration 1 ---
def circle_area(r)
  (r.kind_of?(Numeric) && r > 0) ? (r.to_f ** 2 * Math::PI).round(2) : false
end

