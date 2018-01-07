require_relative "../lib/graph/list_graph"

describe ListGraph do
  describe "creation" do
    it "creates blank graph successfully" do
      graph = ListGraph.new(4)
      expect(graph.to_s).to eq(
        "[nil, nil, nil, nil]"
      )
    end
  end

  describe "adding edges" do
    context "undirected" do
      before do
        @graph = ListGraph.new(4)
      end

      it "adds edge successfully" do
        @graph.add_edge(1, 2)
        expect(@graph.edge?(1, 2)).to be true
      end

      it "adds corresponding edge successfully" do       @graph.add_edge(1, 2)
        expect(@graph.edge?(2, 1)).to be true
      end

      it "throws OutOfBoundsError when called with non-existent vertices" do
        expect { @graph.add_edge(1, 5) }.to raise_error(ListGraph::OutOfBoundsError)
      end
    end

    context "directed" do
      before do
        @graph = ListGraph.new(4, edge_strategy: DirectedEdgeStrategy.new)
      end

      it "adds edge successfully" do
        @graph.add_edge(1, 2)
        expect(@graph.edge?(1, 2)).to be true
      end

      it "does not add corresponding edge" do
        @graph.add_edge(1, 2)
        expect(@graph.edge?(2, 1)).to be false
      end
    end
  end

  describe "removing edges" do
    context "undirected" do
      before do
        @graph = ListGraph.new(4)
      end

      it "removes edge successfully" do
        @graph.add_edge(1, 2)
        @graph.remove_edge(1, 2)
        expect(@graph.edge?(1, 2)).to be false
      end

      it "removes corresponding edge successfully" do
        @graph.add_edge(1, 2)
        @graph.remove_edge(1, 2)
        expect(@graph.edge?(2, 1)).to be false
      end

      it "throws OutOfBoundsError when called with non-existent vertices" do
        expect { @graph.remove_edge(1, 5) }.to raise_error(ListGraph::OutOfBoundsError)
      end
    end

    context "directed" do
      before do
        @graph = ListGraph.new(4, edge_strategy: DirectedEdgeStrategy.new)
      end

      it "removes edge successfully" do
        @graph.add_edge(1, 2)
        @graph.add_edge(2, 1)
        @graph.remove_edge(1, 2)
        expect(@graph.edge?(1, 2)).to be false
      end

      it "doesn't remove corresponding edge" do
        @graph.add_edge(1, 2)
        @graph.add_edge(2, 1)
        @graph.remove_edge(1, 2)
        expect(@graph.edge?(2, 1)).to be true
      end
    end
  end

  describe "edge?" do
    before do
      @graph = ListGraph.new(4)
    end

    it "returns false when edge not found" do
      expect(@graph.edge?(1, 2)).to be false
    end

    it "returns true when edge found" do
      @graph.add_edge(1, 2)
      expect(@graph.edge?(1, 2)).to be true
    end

    it "throws OutOfBoundsError when called with non-existent vertices" do
      expect { @graph.edge?(1, 5) }.to raise_error(ListGraph::OutOfBoundsError)
    end
  end
end
