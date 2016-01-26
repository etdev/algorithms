# http://www.codewars.com/kata/54d22119beeaaaf663000024
# --- iteration 1 ---
def shades_of_grey(n)
  return [] if n < 1
  (1..254).lazy.map{ |x| "#" << ("%02x" % x) * 3 }.first(n)
end


