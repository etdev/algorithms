# http://www.codewars.com/kata/537e18b6147aa838f600001b
# --- iteration 1 ---
def justify(text, width)
  current_count = 0
  words_with_len = text.split.each_with_object([]) do |word, list|
    if list.size > 0
      current_count = list.last.last
    end
    current_count += word.length + 1
    if current_count > width+1
      list << ['\n', -1]
      current_count = word.length + 1
    end
    list << [word, current_count]
  end
  lengthened_arrs = words_with_len.map(&:first).join(" ").split("\\n").map{ |x| x.split(" ") }
  expanded_strs = lengthened_arrs.map{ |x| expand(x, width) }
  expanded_strs.last.gsub!(/\s+/, " ")
  expanded_strs.last.strip! if expanded_strs.last
  expanded_strs.join("\n")
end

def expand(words, width)
  num_spaces = width - (words.inject(0){ |acc, word| acc += word.length})
  space_places = words.count - 1
  return words.first if space_places == 0
  space_counts = ([num_spaces/space_places] * space_places).map.with_index do |x, i|
    if i < num_spaces%space_places
      x + 1
    else
      x
    end
  end
  words.zip(space_counts.map{ |x| " " * x }).join
end

