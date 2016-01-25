# http://www.codewars.com/kata/snail
# --- Iteration 1 (iterative) ---
def snail(arr)
  return arr.first if arr.first.length < 1
  result = []
  until arr.length == 0 do
    current_length = arr.first.length
    result << arr.delete_at(0)
    arr = arr.transpose.reverse.each_slice(current_length).to_a.flatten(1)
  end
  result.flatten
end

# --- Iteration 2 (recursive) ---
def snail(arr)
  return arr.first if arr.length == 1
  result = arr.delete_at(0)
  arr = arr.transpose.reverse
  return (result << snail(arr)).flatten
end

=begin NOTE
* The recursive version can be written way more succintly as:
def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end
* These solutions are all very slow, and all mutate the array, which they shouldn't.
=end


