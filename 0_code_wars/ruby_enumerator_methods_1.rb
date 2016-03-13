# http://www.codewars.com/kata/5143b3d15c6bf6448d00005d/
# --- iteration 1 ---
def check_ages?(data, sex, age)
  data.select{ |datum| datum[:sex] == sex }
      .all? { |datum| datum[:age] > age }
end

# --- iteration 2 ---
def check_ages?(data, sex, age)
  data.all? { |d| d[:sex] != sex || d[:age] > age }
end
