# http://www.codewars.com/kata/555de49a04b7d1c13c00000e
# --- iteration 1 ---
def add(*args)
  args.map.with_index(1).reduce(0) do |acc, (el, i)|
    acc + el.fdiv(i)
  end.round
end

