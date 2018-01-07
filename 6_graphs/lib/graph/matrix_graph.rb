require_relative "matrix_graph/undirected_edge_strategy"
require_relative "matrix_graph/directed_edge_strategy"

# Graph implementation using an adjacency matrix

# If graph has an edge at (i,j), G[i][j] == HAS_VERTEX
# If not, G[i][j] == NO_VERTEX

# [ 00, 01, 02, 03 ]
# [ 10, 11, 12, 13 ]
# [ 20, 21, 22, 23 ]
# [ 30, 31, 32, 33 ]

class MatrixGraph
  HAS_VERTEX = 1
  NO_VERTEX = 0

  attr_reader :elements, :vertex_count, :edge_strategy

  def initialize(vertex_count, edge_strategy: UndirectedEdgeStrategy.new)
    @vertex_count = vertex_count
    @elements = construct_blank_graph
    @edge_strategy = edge_strategy
  end

  def add_edge(i, j)
    with_bounds_check(i, j) do
      edge_strategy.add_edge(self, i, j)
    end
  end

  def remove_edge(i, j)
    with_bounds_check(i, j) do
      edge_strategy.remove_edge(self, i, j)
    end
  end

  def element(i, j)
    with_bounds_check(i, j) { elements[i][j] }
  end

  def row(i)
    with_bounds_check(i) { elements[i] }
  end

  def edge?(i, j)
    with_bounds_check(i, j) { elements[i][j] == HAS_VERTEX }
  end

  def to_s
    elements.map(&:to_s).join("\n")
  end

  private

  def construct_blank_graph
    Array.new(vertex_count) { Array.new(vertex_count, NO_VERTEX) }
  end

  def with_bounds_check(*indices)
    indices.each { |i| raise OutOfBoundsError if i >= vertex_count }

    yield
  end

  class OutOfBoundsError < StandardError
  end
end
