# Strategy for adding and removing edges from an undirected ListGraph
class UndirectedListEdgeStrategy
  def add_edge(graph, i, j)
    graph.elements[i].add(j)
    graph.elements[j].add(i)
  end

  def remove_edge(graph, i, j)
    graph.elements[i].remove(j)
    graph.elements[j].remove(i)
  end
end
