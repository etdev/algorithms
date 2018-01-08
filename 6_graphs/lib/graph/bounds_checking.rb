module BoundsChecking
  def with_bounds_check(*indices)
    indices.each { |i| raise OutOfBoundsError if i >= vertex_count }

    yield
  end

  class OutOfBoundsError < StandardError; end
end
