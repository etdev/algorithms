# Strategy for adding and removing edges from an undirected matrix graph
class UndirectedMatrixEdgeStrategy
  def add_edge(graph, i, j)
    graph.elements[i][j] = MatrixStrategy::HAS_VERTEX
    graph.elements[j][i] = MatrixStrategy::HAS_VERTEX
  end

  def remove_edge(graph, i, j)
    graph.elements[i][j] = MatrixStrategy::NO_VERTEX
    graph.elements[j][i] = MatrixStrategy::NO_VERTEX
  end
end
