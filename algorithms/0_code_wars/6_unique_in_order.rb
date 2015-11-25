# http://www.codewars.com/kata/54e6533c92449cc251001667/solutions/ruby/me/best_practice
# --- Iteration 1 ---
def unique_in_order(iterable)
  iterable = iterable.split("") if iterable.is_a?(String)
  iterable.each_with_object([]) do |char, acc|
    acc << char unless char == acc.last
  end
end

# --- Iteration 2 ---
def unique_in_order(iterable)
  (iterable.is_a?(Array) ? iterable : iterable.chars).each_with_object([]) do |char, acc|
    acc << char unless acc.last == char
  end
end

# --- Iteration 3 ---
def unique_in_order(iterable)
  (iterable.is_a?(Array) ? iterable : iterable.chars).chunk{ |x| x }.map(&:first)
end

=begin NOTES
* Use `String#chars` instead of `String#split("")`
* Use chunk when you want to group consecutive elements in an array by some condition
=end
