# http://www.codewars.com/kata/common-substrings
# --- iteration 1 ---
def substring_test(str1, str2)
  return false unless str1.size > 1 && str2.size > 1
  puts "str1: #{str1.inspect}"
  puts "str2: #{str2.inspect}"
  str1_down, str2_down = [str1, str2].map(&:downcase)
  smaller, larger = [str1_down, str2_down].sort_by(&:size)
  substrings = []
  smaller.chars.each_with_index do |x, i|
    if i+1 < smaller.size
      substrings << smaller[i, 2]
    else
    end
  end
  substrings.each do |substr|
    return true if /#{substr}/ === larger
  end
  false
end

# --- iteration 2 ---
def substring_test(str1, str2)
  return false unless str1.size > 1 && str2.size > 1
  str1_down, str2_down = [str1, str2].map(&:downcase)
  smaller, larger = [str1_down, str2_down].sort_by(&:size)

  substrings = []

  smaller.chars.each_with_index do |x, i|
    if i+1 < smaller.size
      substrings << smaller[i, 2]
    else
    end
  end

  substrings.any? { |substr| /#{substr}/ === larger }
end

# --- iteration 3 ---
def substring_test(str1, str2)
  return false unless str1.size > 1 && str2.size > 1
  smaller, larger = [str1, str2].map(&:downcase).sort_by(&:size)

  substrings = []

  smaller.chars.each_with_index do |x, i|
    if i+1 < smaller.size
      substrings << smaller[i, 2]
    else
    end
  end

  substrings.any? { |substr| /#{substr}/ === larger }
end

# --- iteration 4 ---
def substring_test(str1, str2)
  sm, lg = [str1, str2].map(&:downcase).sort_by(&:size)
  sm.chars.each_cons(2).any? { |x| /#{x.join}/ === lg }
end
