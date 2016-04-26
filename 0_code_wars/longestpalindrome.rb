# http://www.codewars.com/kata/54bb6f887e5a80180900046b
# --- iteration 1 --- (DP, O(N^2))
def longest_palindrome(str)
  return str.length if str.length < 2
  result_table = Array.new(str.length) { Array.new(str.length) }
  max_length = 0
  str.chars.each_index do |j|
    j.downto(0) do |i|
      length_here = j - i + 1
      if length_here == 1
        result_table[i][j] = true
      elsif length_here == 2
         result_table[i][j] = (str[i] == str[j])
      else
        result_table[i][j] = result_table[i+1][j-1] && str[i] == str[j]
      end
      max_length = [max_length, length_here].max if result_table[i][j]
    end
  end
  max_length
end

# --- iteration 2 --- (O(N^3) because of string reverse)
def longest_palindrome(str)
  max_length = 0
  str.chars.each_index do |i|
    (str.length-1).downto(0) do |j|
      if str.slice(i..j) == str.slice(i..j).reverse
        max_length = [max_length, j - i + 1].max
      end
    end
  end
  max_length
end

