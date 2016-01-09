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
