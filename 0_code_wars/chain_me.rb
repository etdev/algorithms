# http://www.codewars.com/kata/54fb853b2c8785dd5e000957
# --- iteration 1 ---
def chain(value, functions)
  functions.reduce(value) do |acc, function|
    send(function, acc)
  end
end

