# by hand
def determinant(matrix)
  return 0 if matrix.empty?
  return matrix[0][0] if matrix.length == 1 && matrix[0].length == 1

  minor_dets = (0...matrix[0].length).map{ |i| minor_matrix(matrix, i) }
    .map{ |m| determinant(m) }
    .zip(matrix[0])
    .map.with_index{ |(det, mult), idx| det * mult * (idx % 2 == 0 ? 1 : -1)}
    .reduce(:+)
end

def minor_matrix(m, i)
  return [] if m.empty? || m.size == 1
  m.map.with_index.reject { |_, idx| idx == 0 }.map(&:first)
   .transpose
   .map.with_index.reject{ |_, idx| idx == i }.map(&:first)
   .transpose
end

# slightly more concise
require "matrix"

def determinant(m)
  Matrix[*m].det
end
