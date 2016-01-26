# http://www.codewars.com/kata/55a3cb91d1c9ecaa2900001b
# --- iteration 1 ---
def strong_enough( earthquake, age )
  building_power = 1000 * (1 - 0.01) ** age
  quake_power = earthquake.reduce(1) { |acc, el| acc * el.reduce(&:+) }
  quake_power > building_power ? "Needs Reinforcement!" : "Safe!"
end

