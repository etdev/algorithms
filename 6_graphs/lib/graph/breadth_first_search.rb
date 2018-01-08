require "set"
require_relative "../graph/list_graph"

class BreadthFirstSearch
  def bfs(graph, source_idx, end_idx)
    q = [source_idx]
    processed = Array.new(graph.vertex_count, false)
    discovered = Array.new(graph.vertex_count, false)
    parents = Array.new(graph.vertex_count, -1)

    loop do
      # return if all nodes have been processed
      if q.empty?
        puts "Failed to find element"
        return false
      end

      # current vertex = oldest from queue
      v = q.shift
      process_node(v, q)
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
        parents[i] = v
      end

      # push children onto queue
      q = q.push(*children)
    end
  end

  def process_node(v, q)
    puts "Processing #{v}, queue: #{q}"
  end
end
