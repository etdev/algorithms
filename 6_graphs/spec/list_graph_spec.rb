require_relative "../lib/graph/graph"

describe Graph do
  context "when stored as adjacency list" do
    describe "creation" do
      it "creates blank graph successfully" do
        graph = Graph.new(4)
        expect(graph.to_s).to eq(
          "[nil, nil, nil, nil]"
        )
      end
    end

    describe "adding edges" do
      context "undirected" do
        before do
          @graph = Graph.new(4, edge_type: :undirected)
        end

        it "adds edge successfully" do
          @graph.add_edge(1, 2)
          expect(@graph.edge?(1, 2)).to be true
        end

        it "adds corresponding edge successfully" do
          @graph.add_edge(1, 2)
          expect(@graph.edge?(2, 1)).to be true
        end

        it "throws OutOfBoundsError when called with non-existent vertices" do
          expect { @graph.add_edge(1, 5) }.to raise_error(Graph::OutOfBoundsError)
        end
      end

      context "directed" do
        before do
          @graph = Graph.new(4, edge_type: :directed)
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
          @graph = Graph.new(4, edge_type: :undirected)
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
          expect { @graph.remove_edge(1, 5) }.to raise_error(Graph::OutOfBoundsError)
        end
      end

      context "directed" do
        before do
          @graph = Graph.new(4, edge_type: :directed)
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
        @graph = Graph.new(4)
      end

      it "returns false when edge not found" do
        expect(@graph.edge?(1, 2)).to be false
      end

      it "returns true when edge found" do
        @graph.add_edge(1, 2)
        expect(@graph.edge?(1, 2)).to be true
      end

      it "throws OutOfBoundsError when called with non-existent vertices" do
        expect { @graph.edge?(1, 5) }.to raise_error(Graph::OutOfBoundsError)
      end
    end

    describe "incident_vertices" do
      before do
        @graph = Graph.new(4)
      end

      it "returns an array of vertices incident to the supplied vertex" do
        @graph.add_edge(1, 2)
        @graph.add_edge(1, 3)
        expect(@graph.incident_vertices(1)).to eq([2,3])
      end
    end
  end
end
