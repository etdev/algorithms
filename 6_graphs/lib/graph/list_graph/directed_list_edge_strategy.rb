# Strategy for adding and removing edges from an undirected list graph
class DirectedListEdgeStrategy
  def add_edge(graph, i, j)
    graph.elements[i].add(j)
  end

  def remove_edge(graph, i, j)
    graph.elements[i].remove(j)
  end
end
