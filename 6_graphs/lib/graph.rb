require "rubygems"

require_relative "graph/list_graph"
require_relative "graph/matrix_graph"
require_relative "graph/printer"
require_relative "graph/vertex"
require_relative "graph/breadth_first_search"

# construct graph
#graph = MatrixGraph.new(9, edge_type: :directed)
#graph.add_edge(0, 1)
#graph.add_edge(1, 3)
#graph.add_edge(1, 4)
#graph.add_edge(1, 5)
#graph.add_edge(4, 7)
#graph.add_edge(3, 4)
#graph.add_edge(7, 8)
#graph.add_edge(4, 8)

graph = ListGraph.new(5)
graph.add_edge(0, 1)
graph.add_edge(1, 2)
graph.add_edge(1, 3)
graph.add_edge(3, 4)

# print graph in terminal
puts graph.to_s

# run BFS on graph
BreadthFirstSearch.new(graph).run(0, 8) { |v, q| puts "Processing #{v}; q: #{q}" }

# print graph on screen
GraphPrinter.new(graph).print
