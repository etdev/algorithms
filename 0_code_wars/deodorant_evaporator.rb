# http://www.codewars.com/kata/5506b230a11c0aeab3000c1f
# --- iteration 1 ---
def evaporator(content, evap_per_day, threshold)
  day = 0
  remaining_per = 100
  loop do
    day += 1
    remaining_per = remaining_per * (1-evap_per_day.fdiv(100))
    return day if remaining_per < threshold
  end
end


