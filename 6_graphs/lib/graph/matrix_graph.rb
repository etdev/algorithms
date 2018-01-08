require_relative "factories/edge_strategy_factory"
require_relative "bounds_checking"

# Graph implementation using an adjacency matrix

# If graph has an edge at (i,j), G[i][j] == HAS_VERTEX
# If not, G[i][j] == NO_VERTEX

# [ 00, 01, 02, 03 ]
# [ 10, 11, 12, 13 ]
# [ 20, 21, 22, 23 ]
# [ 30, 31, 32, 33 ]

class MatrixGraph
  include BoundsChecking

  HAS_VERTEX = 1
  NO_VERTEX = 0

  attr_reader :vertex_count, :elements

  def initialize(vertex_count, edge_type: :undirected)
    @vertex_count = vertex_count
    @elements = construct_blank_graph
    @edge_strategy = edge_strategy_for(edge_type)
  end

  def add_edge(i, j)
    with_bounds_check(i, j) { edge_strategy.add_edge(self, i, j) }
  end

  def remove_edge(i, j)
    with_bounds_check(i, j) { edge_strategy.remove_edge(self, i, j) }
  end

  def edge?(i, j)
    with_bounds_check(i, j) { elements[i][j] == HAS_VERTEX }
  end

  def incident_vertices(i)
    with_bounds_check(i) do
      (0...elements.size).each_with_object([]) do |j, vertices|
        vertices << j if edge?(i, j)
      end
    end
  end

  def to_s
    elements.map(&:to_s).join("\n")
  end

  private

  attr_reader :edge_strategy

  def edge_strategy_for(edge_type)
    EdgeStrategyFactory.create(self, edge_type)
  end

  def construct_blank_graph
    Array.new(vertex_count) { Array.new(vertex_count, NO_VERTEX) }
  end
end
