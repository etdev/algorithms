class Kata
  attr_accessor :id, :name, :rank, :category, :url
  def initialize(id, name, rank, category, url)
    @id = id
    @name = name
    @rank = rank
    @category = category
    @url = url
  end
end
