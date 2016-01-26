# http://www.codewars.com/kata/55908aad6620c066bc00002a
# --- iteration 1 ---
def XO(str)
  str.each_char.reduce(0) do |acc, chr|
    if chr.downcase == "o"
      acc += 1
    elsif chr.downcase == "x"
      acc -= 1
    end
    acc
  end == 0
end

# --- iteration 2 ---
def XO(str)
  str = str.chars.map(&:downcase)
  str.count("x") == str.count("o")
end

# --- iteration 3 ---
def XO(str)
  str.count("xX") == str.count("oO")
end

# --- iteration 4 ---
def XO(str)
  str.scan(/o/i).count == str.scan(/x/i).count
end

