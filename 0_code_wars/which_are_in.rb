# http://www.codewars.com/kata/550554fd08b86f84fe000a58/
# --- iteration 1 ---
def in_array(a1, a2)
  return [] if a1.empty?
  a1.select! do |a1_str|
    a2.any? { |a2_str| a2_str.include?(a1_str) }
  end.sort
end
