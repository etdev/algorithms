# Strategy for adding and removing edges from an undirected ListGraph
class DirectedEdgeStrategy
  def add_edge(graph, i, j)
    graph.lists[i].add(j)
  end

  def remove_edge(graph, i, j)
    graph.lists[i].remove(j)
  end
end
