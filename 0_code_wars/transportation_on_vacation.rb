# http://www.codewars.com/kata/568d0dd208ee69389d000016
# --- iteration 1 ---
def rental_car_cost(d)
  40*d - if d >= 7
           50
         elsif d >= 3
            20
         else
           0
         end
end

# --- iteration 2 ---
def rental_car_cost(d)
  (d * 40)
  .tap { |x| return x if d < 3 }
  .tap { |x| return x - 20 if d < 7 } - 50
end

# --- iteration 3 ---
def rental_car_cost(d)
  return 40*d if d < 3
  d < 7 ? 40 * d - 20 : 40 * d - 50
end

