require_relative "../strategies/matrix_strategy"

# Strategy for adding and removing edges from an undirected matrix graph
class DirectedMatrixEdgeStrategy
  def add_edge(graph, i, j)
    graph.elements[i][j] = MatrixStrategy::HAS_VERTEX
  end

  def remove_edge(graph, i, j)
    graph.elements[i][j] = MatrixStrategy::NO_VERTEX
  end
end
