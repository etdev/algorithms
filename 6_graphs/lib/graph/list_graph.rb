require_relative "list_graph/list_node"
require_relative "list_graph/undirected_edge_strategy"
require_relative "list_graph/directed_edge_strategy"
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

  attr_reader :lists, :vertex_count

  def initialize(vertex_count, edge_strategy: UndirectedEdgeStrategy.new)
    @vertex_count = vertex_count
    @lists = construct_blank_graph
    @edge_strategy = edge_strategy
  end

  def add_edge(i, j)
    with_bounds_check(i, j) { edge_strategy.add_edge(self, i, j) }
  end

  def remove_edge(i, j)
    with_bounds_check(i, j) { edge_strategy.remove_edge(self, i, j) }
  end

  def edge?(i, j)
    with_bounds_check(i, j) { lists[i].contains?(j) }
  end

  def to_s
    "[#{lists.map(&:to_s).join(", ")}]"
  end

  private

  attr_reader :edge_strategy

  def construct_blank_graph
    Array.new(vertex_count) { ListNode.new }
  end
end
