def solution(a)
  # Hash table with positive key for each val, false
  abs_hash = {}
  a.each do |val|
    abs_hash["#{val.abs}"] = true
  end
  abs_hash.keys.size
end
