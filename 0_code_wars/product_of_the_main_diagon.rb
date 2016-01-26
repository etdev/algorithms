# http://www.codewars.com/kata/551204b7509063d9ba000b45
# --- iteration 1 ---
def main_diagonal_product(matrix)
  (0...matrix.count).reduce(1){ |acc, i| acc * matrix[i][i] }
end


