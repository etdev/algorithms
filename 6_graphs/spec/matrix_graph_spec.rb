require_relative "../lib/graph/graph"

describe Graph do
  context "when stored as an adjacency matrix" do
    describe "creation" do
      it "creates blank graph successfully" do
        graph = Graph.new(4, storage_type: :matrix)
        expect(graph.to_s).to eq(
          "[0, 0, 0, 0]\n[0, 0, 0, 0]\n[0, 0, 0, 0]\n[0, 0, 0, 0]"
        )
      end
    end

    describe "edges" do
      context "undirected" do
        before do
          @graph = Graph.new(4, storage_type: :matrix, edge_type: :undirected)
        end

        it "can check if edge exists" do
          @graph.elements[1][2] = MatrixStrategy::HAS_VERTEX
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
          expect { @graph.add_edge(1, 5) }.to raise_error(Graph::OutOfBoundsError)
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
          expect { @graph.remove_edge(1, 5) }.to raise_error(Graph::OutOfBoundsError)
        end
      end

      context "directed" do
        before do
          @graph = Graph.new(4, storage_type: :matrix, edge_type: :directed)
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

    describe "incident_vertices" do
      before do
        @graph = Graph.new(4, storage_type: :matrix)
      end

      it "returns an array of vertices incident to the supplied vertex" do
        @graph.add_edge(1, 2)
        @graph.add_edge(1, 3)
        expect(@graph.incident_vertices(1)).to eq([2,3])
      end
    end
  end
end
