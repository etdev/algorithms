# http://www.codewars.com/kata/55e8beb4e8fc5b7697000036
# --- iteration 1 ---
class Hero
  def initialize
    @position = [0, 0]
  end

  def move(dir)
    case dir
    when "up"
      y_coord == 0 ? fail : @position[0] -= 1
    when "down"
      y_coord == 4 ? fail : @position[0] += 1
    when "left"
      x_coord == 0 ? fail : @position[1] -= 1
    when "right"
      x_coord == 4 ? fail : @position[1] += 1
    end
  end

  def position
    @position.join
  end

  def y_coord
    @position[0]
  end

  def x_coord
    @position[1]
  end
end

