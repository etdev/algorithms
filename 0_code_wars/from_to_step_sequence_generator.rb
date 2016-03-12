# http://www.codewars.com/kata/56459c0df289d97bd7000083/
# --- iteration 1 ---
def generator(from, to, step)
  return [] if step < 1
  if to < from
    from.downto(to).to_a.map.with_index.reduce([]) do |acc, (el, i)|
      acc << el if (el - from) % step == 0 && el >= to
      acc
    end
  else
    from.step(to, step).to_a
  end
end

# --- iteration 2 ---
def generator(from, to, step)
  return [] if step == 0
  from.step(to, (to > from ? step : -step)).to_a
end
