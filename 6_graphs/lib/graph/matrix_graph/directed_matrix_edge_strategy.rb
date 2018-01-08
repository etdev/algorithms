# Strategy for adding and removing edges from an undirected MatrixGraph
class DirectedMatrixEdgeStrategy
  def add_edge(graph, i, j)
    graph.elements[i][j] = MatrixGraph::HAS_VERTEX
  end

  def remove_edge(graph, i, j)
    graph.elements[i][j] = MatrixGraph::NO_VERTEX
  end
end
