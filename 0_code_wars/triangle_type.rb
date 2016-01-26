# http://www.codewars.com/kata/53907ac3cd51b69f790006c5
# --- iteration 1 ---
def triangle_type (a, b, c)
  angles = (0.upto(2)).with_object([]) do |i, acc|
    acc << get_angle(*([a, b, c].rotate(i).map(&:to_f)))
  end
  angles_sum = angles.reduce(&:+).round(4)
  return 0 if angles_sum != 180.0 || angles.include?(180.0) || angles.include?(-1)
  return 1 if angles.all?{ |angle| angle < 90.0 }
  return 2 if angles.any?{ |angle| angle == 90.0 }
  return 3 if angles.any?{ |angle| angle > 90.0 }
  0
end

def get_angle(a, b, c)
  (Math.acos((a**2.0 + b**2.0 - c**2.0) / (2.0*a*b)) * (180.0/Math::PI)).round(5)
rescue
  -1
end

