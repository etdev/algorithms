require_relative "../strategies/list_strategy"
require_relative "../strategies/matrix_strategy"

class StorageStrategyFactory
  def self.for(storage_type, vertex_count)
    case storage_type
    when :list then ListStrategy.new(vertex_count)
    when :matrix then MatrixStrategy.new(vertex_count)
    else raise UnknownStorageTypeError
    end
  end

  class UnknownStorageTypeError < StandardError; end
end

