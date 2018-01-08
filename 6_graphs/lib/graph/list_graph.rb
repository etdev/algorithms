require_relative "list_graph/list_node"
require_relative "factories/edge_strategy_factory"
require_relative "bounds_checking"

# Graph implementation using an adjacency list

# If graph has an edge at (i, j), linked list i contains a node with value j
# It not, it does not include this node

# [ 00 -> 01 -> 02 -> 03,
#   10 -> 11 -> 12 -> 13,
#   20 -> 21 -> 22 -> 23,
#   30 -> 31 -> 32 -> 33 ]

# This depends on the ListNode class
class ListGraph
  include BoundsChecking

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
    with_bounds_check(i, j) { elements[i].contains?(j) }
  end

  def incident_vertices(i)
    with_bounds_check(i) { elements[i].to_a }
  end

  def to_s
    "[#{elements.map(&:to_s).join(", ")}]"
  end

  private

  attr_reader :edge_strategy

  def edge_strategy_for(edge_type)
    EdgeStrategyFactory.create(self, edge_type)
  end

  def construct_blank_graph
    Array.new(vertex_count) { ListNode.new }
  end
end
