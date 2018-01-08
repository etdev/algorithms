#require_relative "graph"
#require_relative "list_graph/list_node"
#require_relative "factories/edge_strategy_factory"
#class ListGraph < Graph
  #def edge?(i, j)
    #storage_strategy.edge?(i, j)
  #end

  #def incident_vertices(i)
    #with_bounds_check(i) { elements[i].to_a }
    #storage_strategy.incident_vertices?(i)
  #end

  #private

  #attr_reader :list_strategy

  #def construct_blank_graph
    #storage_strategy.construct_blank_graph
  #end
#end

#class ListStrategy
  #def edge?(i, j)
    #with_bounds_check(i, j) { elements[i].contains?(j) }
  #end

  #def incident_vertices(i)
    #with_bounds_check(i) { elements[i].to_a }
  #end

  #def construct_blank_graph
    #Array.new(vertex_count) { ListNode.new }
  #end
#end
