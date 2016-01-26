# http://www.codewars.com/kata/54da539698b8a2ad76000228
# --- iteration 1 ---
def isValidWalk(walk)
  return false unless walk.count == 10
  dir_counts = ['n', 's', 'e', 'w'].reduce({}) do |acc, dir|
    acc.merge({dir => walk.count(dir)})
  end
  return false unless (dir_counts['n'] == dir_counts['s'] && dir_counts['e'] == dir_counts['w'])
  true
end

# --- iteration 2 ---
def isValidWalk(walk)
  return false unless walk.count == 10
  offsets = walk.reduce([0, 0]) do |acc, el|
    acc[0] += 1 if el == 'n'
    acc[0] -= 1 if el == 's'
    acc[1] += 1 if el == 'e'
    acc[1] -= 1 if el == 'w'
    acc
  end
  offsets == [0, 0]
end

