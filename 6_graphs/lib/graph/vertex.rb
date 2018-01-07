class Vertex
  attr_reader :x, :y, :name, :edges

  def initialize(name, x, y)
    @name = name
    @x = y
    @y = x
    @edges = Set.new
  end

  def add_edge(n)
    @edges.add(n)
  end
end
