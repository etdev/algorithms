require_relative "../list_graph/undirected_list_edge_strategy"
require_relative "../list_graph/directed_list_edge_strategy"
require_relative "../matrix_graph/directed_matrix_edge_strategy"
require_relative "../matrix_graph/undirected_matrix_edge_strategy"

class EdgeStrategyFactory
  class << self
    def for(storage_type, edge_type)
      case storage_type
      when :matrix
        for_matrix(edge_type)
      when :list
        for_list(edge_type)
      else
        raise UnknownEdgeTypeError
      end
    end

    def for_matrix(edge_type)
      return UndirectedMatrixEdgeStrategy.new if edge_type == :undirected

      DirectedMatrixEdgeStrategy.new
    end

    def for_list(edge_type)
      return UndirectedListEdgeStrategy.new if edge_type == :undirected

      DirectedListEdgeStrategy.new
    end

    class UnknownEdgeTypeError < StandardError; end
  end
end
