# http://www.codewars.com/kata/51f193ccbfb321860d00040d
# --- iteration 1 ---
class Hash
  def method_missing(symbol, *args)
    return super(symbol, *args) unless symbol[0] == "_"
    symbol = symbol[1..-1].tr("=", "").to_sym
    if (!has_key?(symbol)) && (!has_key?(symbol.to_s))
      if args.any?
        self[symbol.to_s.to_sym] = args.first
      end
      return nil
    elsif has_key?(symbol)
      if args.length > 0
        self[symbol] = args.first
        return args.first
      else
        return self[symbol]
      end
    else
      if args.any?
        self[symbol.to_s] = args.first
        return args.first
      else
        return self[symbol.to_s]
      end
    end
  end
end

