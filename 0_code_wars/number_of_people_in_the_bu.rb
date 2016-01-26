# http://www.codewars.com/kata/5648b12ce68d9daa6b000099
# --- iteration 1 ---
def number(bus_stops)
  bus_stops.reduce(0) { |acc, el| acc + el[0] - el[1] }
end

# --- iteration 2 ---
def number(bus_stops)
  bus_stops.map{ |on, off| on - off }.reduce(&:+)
end

