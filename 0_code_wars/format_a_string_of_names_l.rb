# http://www.codewars.com/kata/53368a47e38700bd8300030d
# --- iteration 1 ---
def list names
  return_names = []
  names.each do |name|
    return_names << name[:name] << ', '
  end
  return_names.pop
  return_names[-2] = ' & ' if names.size>1
  return_names.flatten.join
end

# --- iteration 2 ---
def list names
  names.map(&:values).join(", ").gsub(/, (\w+)$/, " & \\1")
end

