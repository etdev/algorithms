def mean(town, str)
  means = Hash[str.split("\n").map{ |line| line.split(":") }]
  return -1 unless means.has_key?(town)
  means[town].scan(/\d+\.\d+/).map(&:to_f).reduce(:+).fdiv(12)
end

def variance(town, str)
  return -1 if mean(town, str) == -1
  m = mean(town, str)
  vars = Hash[str.split("\n").map{ |line| line.split(":") }]
  vars[town].scan(/\d+\.\d+/).map{ |a| ((a.to_f - m) ** 2) }.reduce(0, :+).fdiv(12) 
end
