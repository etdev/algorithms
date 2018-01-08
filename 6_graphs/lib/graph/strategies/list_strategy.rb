require_relative "../list_graph/list_node"
# Graph storage implementation using an adjacency list

# If graph has an edge at (i, j), linked list i contains a node with value j
# It not, it does not include this node

# [ 00 -> 01 -> 02 -> 03,
#   10 -> 11 -> 12 -> 13,
#   20 -> 21 -> 22 -> 23,
#   30 -> 31 -> 32 -> 33 ]

# This depends on the ListNode class
class ListStrategy
  attr_accessor :elements
  attr_reader :vertex_count

  def initialize(vertex_count)
    @elements = construct_blank_graph(vertex_count)
    @vertex_count = vertex_count
  end

  def edge?(i, j)
    elements[i].contains?(j)
  end

  def incident_vertices(i)
    elements[i].to_a
  end

  def to_s
    "[#{elements.map(&:to_s).join(", ")}]"
  end

  private

  def construct_blank_graph(vertex_count)
    Array.new(vertex_count) { ListNode.new }
  end
end

