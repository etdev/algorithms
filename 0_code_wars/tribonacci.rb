# http://www.codewars.com/kata/tribonacci-sequence/
# --- iteration 1 ---
def tribonacci(signature, n)
  indices = (0..n+2).to_a
  indices.each do |idx|
    if idx < 3
      indices[idx] = signature[idx]
    else
      indices[idx] = indices[idx-3..idx-1].reduce(&:+)
    end
  end.first(n)
end

# --- iteration 2 ---
def tribonacci(sig, n)
  arr = Array.new(n) { |i| sig[i] || nil }
  arr.map!.with_index { |x, i| x || arr[i-3...i].reduce(&:+) }
end
