# http://www.codewars.com/kata/570fd7ad34e6130455001835
# --- iteration 1 ---
def zebulansNightmare(func_name)
  func_name.split("_")
    .map.with_index{ |x, i| i == 0 ? x : x.capitalize }
    .join
end

# --- iteration 2 ---
def zebulansNightmare(str)
  str.gsub(/_./) { |m| m[1].upcase }
end

