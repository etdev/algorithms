require_relative "../list_graph"
require_relative "../list_graph/undirected_list_edge_strategy"
require_relative "../list_graph/directed_list_edge_strategy"
require_relative "../matrix_graph"
require_relative "../matrix_graph/undirected_matrix_edge_strategy"
require_relative "../matrix_graph/directed_matrix_edge_strategy"

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
