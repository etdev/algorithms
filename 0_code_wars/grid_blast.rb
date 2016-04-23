# http://www.codewars.com/kata/54fdfe14762e2edf4a000a33
# --- iteration 1 ---
def fire(x,y)
  $grid.each_slice(3).to_a[y][x]
end

# --- iteration 2 ---
def fire(x,y)
  $grid[y*3+x]
end

