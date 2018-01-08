require_relative "../list_graph"
require_relative "../matrix_graph"

class EdgeStrategyFactory
  def self.create(graph, edge_type)
    case graph
    when MatrixGraph
      return UndirectedMatrixEdgeStrategy.new if edge_type == :undirected
      DirectedMatrixEdgeStrategy.new
    when ListGraph
      return UndirectedListEdgeStrategy.new if edge_type == :undirected
      DirectedListEdgeStrategy.new
    else
      raise UnknownEdgeTypeError
    end
  end

  class UnknownEdgeTypeError < StandardError; end
end
