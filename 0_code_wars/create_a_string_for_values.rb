# http://www.codewars.com/kata/53e8ab878f9e6658410002af
# --- iteration 1 ---
def list_in_range(hsh, range)
  hsh.select{ |k, v| range === v }
    .sort_by{ |k, v| v }
    .reduce([]) { |acc, (name, num_val)|
    acc << "#{name} (#{num_val})"
  }.join(", ")
end

