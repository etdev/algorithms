# http://www.codewars.com/kata/help-your-granny/

def tour(friends, towns, distances)
  @towns, @distances = towns, distances
  @friends = friends.select{ |friend| @towns.assoc(friend) }
  total_dist = distance_from_grandma(0)
  (1...@friends.length).each do |idx|
    total_dist += distance_using_pythag(idx)
  end
  (total_dist + distance_from_grandma(@friends.length-1)).floor
end

def distance_from_grandma(idx)
  @distances[@towns.assoc(@friends[idx])[1]]
end

def distance_using_pythag(idx)
  ((distance_from_grandma(idx) ** 2) - (distance_from_grandma(idx-1) ** 2)) ** (1.0/2.0)
end
