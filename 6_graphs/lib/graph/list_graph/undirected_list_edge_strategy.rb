# Strategy for adding and removing edges from an undirected ListGraph
class UndirectedListEdgeStrategy
  def add_edge(graph, i, j)
    graph.lists[i].add(j)
    graph.lists[j].add(i)
  end

  def remove_edge(graph, i, j)
    graph.lists[i].remove(j)
    graph.lists[j].remove(i)
  end
end
