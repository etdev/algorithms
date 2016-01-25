# http://www.codewars.com/kata/5592e3bd57b64d00f3000047/
# --- iteration 1 ---
def find_nb(m)
  count = cube_sum = 1
  until cube_sum >= m
    count += 1
    cube_sum += (count ** 3)
  end
  cube_sum == m ? count : -1
end

# --- iteration 2 ---
def find_nb(total_vol)
  cube_count = 1
  until total_vol <= 0
    total_vol -= cube_count ** 3
    cube_count += 1
  end
  total_vol == 0 ? cube_count-1 : -1
end

# sometimes it's good to use a passed in value and subtract from it when you're
# concerned about whether it ends up being 0 etc, instead of instantiating a new
# val like in iteration 1
