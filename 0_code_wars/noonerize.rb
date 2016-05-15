# http://www.codewars.com/kata/56dbed3a13c2f61ae3000bcd
# --- iteration 1 ---
def noonerize(numbers)
  return "invalid array" unless numbers.all? { |num| num.is_a?(Fixnum) }
  nums_spoonerized = numbers.map(&:to_s).tap{ |(a, b)| a[0], b[0] = b[0], a[0] }.map(&:to_i)
  nums_spoonerized.reduce(:-).abs
end
