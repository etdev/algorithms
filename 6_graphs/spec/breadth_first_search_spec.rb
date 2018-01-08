require_relative "../lib/graph/breadth_first_search"

describe BreadthFirstSearch do
  before do
    @graph = Graph.new(5)
    @graph.add_edge(0, 1)
    @graph.add_edge(1, 3)
    @graph.add_edge(3, 4)
  end

  describe "run" do
    it "runs block for elements in correct order" do
      bfs = BreadthFirstSearch.new(@graph)
      expect { bfs.run(0, 4) { |v| puts v } }
        .to output("0\n1\n3\n4\n")
        .to_stdout
    end
  end
end
