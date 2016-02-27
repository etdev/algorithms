# http://www.codewars.com/kata/56aaf25213edd3a88a000002/
# --- iteration 1 ---
class Array
  def zip(arr, &block)
    slice(0...[size, arr.size].min).map.with_index do |el, i|
      block.(el, arr[i])
    end
  end
end

class Array
  def zip(arr, &block)
    (0...[size, arr.size].min).map do |i|
      yield(self[i], arr[i])
    end
  end
end
