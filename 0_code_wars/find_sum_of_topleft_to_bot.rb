# http://www.codewars.com/kata/5497a3c181dd7291ce000700
# --- iteration 1 ---
def diagonalSum(mat)
  mat.map.with_index.reduce(0){ |ac, (el, i)| ac + el[i] }
end

# --- iteration 2 ---
require "matrix"
def diagonalSum(matrix)
  Matrix[*matrix].trace
end

# --- iteration 3 ---
def diagonalSum(matrix)
  matrix.map.with_index{ |x, i| x[i] }.reduce(:+)
end




