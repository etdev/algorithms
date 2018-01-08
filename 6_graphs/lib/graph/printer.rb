require "green_shoes"

class GraphPrinter
  WIDTH = 500
  HEIGHT = 500
  VERTEX_RADIUS = 5
  MARGIN = 20

  def initialize(graph)
    @graph = graph
    @vertices = generate_vertices
  end

  def print
    vt = vertices

    Shoes.app width: WIDTH + MARGIN, height: HEIGHT + MARGIN do
      vt.each do |v|
        oval v.x, v.y, VERTEX_RADIUS

        para v.name, left: v.x + MARGIN / 2, top: v.y - MARGIN / 2

        v.edges.each do |edge|
          line v.x + VERTEX_RADIUS, v.y + VERTEX_RADIUS, vt[edge].x + VERTEX_RADIUS, vt[edge].y + VERTEX_RADIUS
        end
      end
    end
  end

  private

  attr_reader :graph, :vertices

  def vertex_count
    graph.vertex_count
  end

  def generate_vertices
    vertex_placements.map.with_index do |(x, y), i|
      vertex = Vertex.new(i, x, y)
      graph.incident_vertices(i).each do |j|
        vertex.add_edge(j)
      end
      vertex
    end
  end

  def vertex_placements
    row_indices
      .flat_map { |idx| ([idx] * col_indices.length).zip(col_indices) }
      .first(vertex_count)
  end

  def rows_count
    Math.sqrt(vertex_count).ceil
  end

  def cols_count
    rows_count
  end

  def x_distance_unit
    (WIDTH - (2 * MARGIN)) / (rows_count - 1)
  end

  def y_distance_unit
    (HEIGHT - (2 * MARGIN)) / (cols_count - 1)
  end

  def row_indices
    (MARGIN..WIDTH + MARGIN).step(x_distance_unit).to_a
  end

  def col_indices
    (MARGIN..HEIGHT + MARGIN).step(y_distance_unit).to_a
  end
end
