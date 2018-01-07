require_relative "../lib/graph/matrix_graph.rb"

describe MatrixGraph do
  describe "creation" do
    it "creates blank graph successfully" do
      graph = MatrixGraph.new(4)
      expect(graph.to_s).to eq(
        "[0, 0, 0, 0]\n[0, 0, 0, 0]\n[0, 0, 0, 0]\n[0, 0, 0, 0]"
      )
    end
  end

  describe "edges" do
    context "undirected" do
      before do
        @graph = MatrixGraph.new(4)
      end

      it "can check if edge exists" do
        @graph.elements[1][2] = MatrixGraph::HAS_VERTEX
        expect(@graph.edge?(1, 2)).to be true
      end

      it "can add edges" do
        @graph.add_edge(1, 2)
        expect(@graph.edge?(1, 2)).to be true
      end

      it "adds edges to both locations" do
        @graph.add_edge(1, 2)
        expect(@graph.edge?(2, 1)).to be true
      end

      it "throws OutOfBoundsError for addition when vertices don't exist" do
        expect { @graph.add_edge(1, 5) }.to raise_error(MatrixGraph::OutOfBoundsError)
      end

      it "can remove edges" do
        @graph.add_edge(1, 2)
        @graph.remove_edge(1, 2)

        expect(@graph.edge?(1, 2)).to be false
      end

      it "removes edges to both locations" do
        @graph.add_edge(1, 2)
        @graph.remove_edge(1, 2)

        expect(@graph.edge?(2, 1)).to be false
      end

      it "throws OutOfBoundsError for removal when vertices don't exist" do
        expect { @graph.remove_edge(1, 5) }.to raise_error(MatrixGraph::OutOfBoundsError)
      end
    end

    context "directed" do
      before do
        @graph = MatrixGraph.new(4, edge_strategy: DirectedEdgeStrategy.new)
      end

      describe "adding edges" do
        it "only adds single edge" do
          @graph.add_edge(1, 2)
          expect(@graph.edge?(2, 1)).to be false
        end
      end

      describe "removing edges" do
        it "only removes single edge" do
          @graph.add_edge(1, 2)
          @graph.add_edge(2, 1)
          @graph.remove_edge(2, 1)

          expect(@graph.edge?(1, 2)).to be true
        end
      end
    end
  end

  describe "row" do
    before do
      @graph = MatrixGraph.new(4)
    end

    it "returns the correct row" do
      @graph.add_edge(0, 1)
      expect(@graph.row(0)).to eq([0,1,0,0])
    end
  end
end
