# http://www.codewars.com/kata/55b75fcf67e558d3750000a3/
# --- iteration 1 ---
class Block

  def initialize(args)
    @width, @length, @height = args
    @volume = args.reduce(:*)
    @surface_area = 2*(@width * @length + @length * @height + @height * @width)
  end

  def get_width
    @width
  end

  def get_length
    @length
  end

  def get_height
    @height
  end

  def get_volume
    @volume
  end

  def get_surface_area
    @surface_area
  end
end
