def solution(fish_sizes, fish_dirs)
  dead_count = 0
  downstream_fish = []

  fish_sizes.each_with_index do |fish, i|
    # downstream fish
    if fish_dirs[i] == 1
      downstream_fish.push(fish)
    else # upstream fish
      until downstream_fish.empty?
        dead_count += 1
        break if downstream_fish[-1] > fish
        downstream_fish.pop
      end
    end
  end

  fish_sizes.count - dead_count
end
