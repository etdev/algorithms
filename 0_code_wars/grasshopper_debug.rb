# http://www.codewars.com/kata/55cb854deb36f11f130000e1
# --- iteration 1 ---
def weather_info(temp)
  c = convert(temp)
  (c < 0) ? (c.to_s + " is freezing temperature") : (c.to_s + " is above freezing temperature")
end

def convert(t)
  (t.to_f - 32.0) * (5.0/9.0)
end

