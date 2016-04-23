# http://www.codewars.com/kata/56143efa9d32b3aa65000016
# --- iteration 1 ---
def sum_circles(*args)
  radii = args.map{ |diam| diam.fdiv(2) }
  "We have this much circle: #{radii.reduce(0){ |a, r| a + (Math::PI * (r ** 2)) }.round}"
end

