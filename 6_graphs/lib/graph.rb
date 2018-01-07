require "rubygems"

require_relative "graph/matrix_graph"
require_relative "graph/printer"
require_relative "graph/vertex"

graph = MatrixGraph.new(13)
graph.add_edge(0, 1)
graph.add_edge(2, 3)
graph.add_edge(3, 4)
graph.add_edge(0, 11)
graph.add_edge(5, 12)
puts graph.to_s

GraphPrinter.new(graph).print
