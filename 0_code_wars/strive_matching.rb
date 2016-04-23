# http://www.codewars.com/kata/56c22c5ae8b139416c00175d
# --- iteration 1 ---
def match(candidate, job)
  candidate["min_salary"] * 0.9 <= job["max_salary"]
end

