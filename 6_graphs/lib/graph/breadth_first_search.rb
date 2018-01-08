require "set"
require_relative "../graph/list_graph"

class BreadthFirstSearch
  attr_reader :parents, :graph

  def initialize(graph)
    @parents = Array.new(graph.vertex_count, -1)
    @graph = graph
  end

  def run(source_idx, end_idx, &process_block)
    q = [source_idx]
    processed = Array.new(graph.vertex_count, false)
    discovered = Array.new(graph.vertex_count, false)
    discovered[source_idx] = true

    loop do
      # return if all nodes have been processed
      if q.empty?
        puts "Failed to find element"
        return false
      end

      # current vertex = oldest from queue
      v = q.shift

      # process node
      process_block.call(v, q) if process_block
      processed[v] = true

      # return if goal node found
      if v == end_idx
        puts "Found element"
        return true
      end

      # children = vertices incident to v, that have not yet been processed
      children = (0...graph.vertex_count)
        .select { |i| graph.edge?(v, i) }
        .reject { |i| discovered[i] }

      # mark discovered
      children.each do |i|
        discovered[i] = true
        @parents[i] = v
      end

      # push children onto queue
      q = q.push(*children)
    end
  end
end
