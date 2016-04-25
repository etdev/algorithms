# http://www.codewars.com/kata/550f22f4d758534c1100025a/train/ruby
# --- iteration 1 ---
REDUCEABLE_OPTS = [["EAST","WEST"], ["WEST","EAST"], ["NORTH","SOUTH"], ["SOUTH","NORTH"]]

def dirReduc(dirs)  while reduceable?(dirs) do
    dirs = reduce_pair(dirs)
  end
  dirs
end

def reduceable?(dirs)	dirs.each_cons(2).with_index do |sl, i|
    if REDUCEABLE_OPTS.include?(sl)
      return true
    end
  end
  false
end

def reduce_pair(dirs)	dirs.each_cons(2).with_index do |sl, i|
    if REDUCEABLE_OPTS.include?(sl)
      dirs.delete_at(i)
      dirs.delete_at(i)
      return dirs
    end
  end
end

# --- iteration 2 ---
def dirReduc(dirs)
  loop do
    dirs_old = dirs.dup
    dirs = reduce_pair(dirs)
    break if dirs_old == dirs
  end
  dirs
end

def reduce_pair(dirs)
  dirs.each_cons(2).with_index do |sl, i|
    if [["EAST","WEST"], ["WEST","EAST"], ["NORTH","SOUTH"], ["SOUTH","NORTH"]].include?(sl)
      2.times{ dirs.delete_at(i) }
      return dirs
    end
  end
  dirs
end

# --- ieration 3 ---
OPPOSITES = { "EAST" => "WEST",
              "WEST" => "EAST",
              "NORTH" => "SOUTH",
              "SOUTH" => "NORTH"
            }

def dirReduc(dirs)
  dirs.each_with_object([]) do |dir, path|
    OPPOSITES[dir] == (path.last) ? path.pop : path.push(dir)
  end
end
