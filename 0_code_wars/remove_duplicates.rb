# http://www.codewars.com/kata/53e30ec0116393fe1a00060b
# --- iteration 1 ---
def unique(ints)
  unique_ints = []
  ints.each do |int|
    unique_ints << int unless unique_ints.include?(int)
  end
  unique_ints
end

# --- iteration 2 ---
def unique(i)
  i&i
end

# --- iteration 3 ---
def unique(xOxXxOxXxOxX)
xOxXxOxXxOxX&xOxXxOxXxOxX
xOxXxOxXxOxX&xOxXxOxXxOxX
xOxXxOxXxOxX&xOxXxOxXxOxX
xOxXxOxXxOxX&xOxXxOxXxOxX
end

