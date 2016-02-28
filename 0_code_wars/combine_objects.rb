# http://www.codewars.com/kata/56bd9e4b0d0b64eaf5000819
# --- iteration 1 ---
def combine(*objects)
  objects.reduce({}) do |acc, el|
    el.each do |k, v|
      if acc.key?(k)
        acc[k] += v
      else
        acc[k] = v
      end
    end
    acc
  end
end

# --- iteration 2 ---
def combine(*objects)
  objects.reduce{ |acc, obj| acc.merge(obj){ |k, o, n| o.to_i + n } }
end
