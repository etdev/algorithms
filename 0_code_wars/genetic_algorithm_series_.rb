# http://www.codewars.com/kata/567b39b27d0a4606a5000057
# --- iteration 1 ---
def mutate(chromosome, p)
  chromosome.chars.map.with_index do |c, i|
    i < chromosome.size * p ? (c.to_i + 1) % 2 : c
  end.shuffle.join
end

