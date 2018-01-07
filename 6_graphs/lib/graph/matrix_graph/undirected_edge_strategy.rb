# Strategy for adding and removing edges from an undirected MatrixGraph
class UndirectedEdgeStrategy
  def add_edge(graph, i, j)
    graph.elements[i][j] = MatrixGraph::HAS_VERTEX
    graph.elements[j][i] = MatrixGraph::HAS_VERTEX
  end

  def remove_edge(graph, i, j)
    graph.elements[i][j] = MatrixGraph::NO_VERTEX
    graph.elements[j][i] = MatrixGraph::NO_VERTEX
  end
end
