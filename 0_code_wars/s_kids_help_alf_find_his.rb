# http://www.codewars.com/kata/5660aa3d5e011dfd6e000063
# --- iteration 1 ---
def find_spaceship(m)
  return "Spaceship lost forever." unless m.include?("X")
  m.split("\n").reverse.each_with_index do |row, i|
    return [row.index("X"), i] if row.include?("X")
  end
end

