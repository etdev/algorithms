# iteration #1, O(n**2) (naive)
=begin
[1, 5, 2, 1, 4, 0]
0  1   2  3  4  5
--> center => radius = { 0: 1, 1: 5, 2: 2, 3: 1, 4: 4, 5: 0 }
rages = [ [-1, 1], [-4, 6], [1, 4], [2, 5], [0, 8], [5, 5] ]

1 (-1, 1):
  5 (-4, 6): a starts inside b, so count += 1

5 (-4, 6):
  1 (-1, 1):
=end

def solution(a)
  # naive - loop through and check all others
  count = 0
  a.each_with_index do |disc_out, i_out|
    a.drop(i_out+1).each_with_index do |disc_in, i_in|
      next if i_out == i_in
      count += 1 if overlaps?(range(a, i_out), range(a, i_in))
    end
  end
  count
end

def range(arr, i)
  ((i - arr[i])..(i + arr[i])).to_a
end

def overlaps?(range_a, range_b)
  return true if range_a.last >= range_b.first
end

a = [1, 5, 2, 1, 4, 0]
solution(a)


=begin
## want to find the # of intersections of the intervals [i-A[i], i+A[i]].
* If discs 1, 2, 3, 4, 5 exist, 1 and 2 can only intersect once.
* Disc n can't intersect with itself.

## strategy
* Maintain a sorted array (call it starts) containing all the ``i-A[i]`` values
* Maintain another sorted array (call it ends) containing the end values ``i+A[i]``
* Walk the array ``starts``
  * For the current interval, do a binary search to see where the right endpoint 
of the interval (i.e. i+A[i]) will go, called the RANK.  Then you know it intersects
all the


=end
# iteration #2 - (hopefully) optinal
def solution(a)
    # want to know the number of discs that start, stop
    # at each position.  Then we can calculate how many
    # intersections there are.
    
    # create a hash with default start, stop values set to 0
    events = Hash.new{ |h, k| h[k] = {:start => 0, :stop => 0}}
    
    # store the start, stop vals for each element in a
    a.each_index do |i|
        events[i - a[i]][:start] += 1
        events[i + a[i]][:stop] += 1
    end
    
    # so now event[i][:start] is the start val for a[i]
    # sort the events
    sorted_events = events.sort_by { |index, val| index}
    sorted_events.map! {|n| n[1]}
    
    # so now sorted_events[i] tells us how many starts and stops occured at (i, 0).
    
    # iterate over our sorted array of hashes which tell us how many discs start and end at each position.  There are two cases we need to worry about:
    # 1) how many discs are already going when the new disc starts: (e[:start] * past_start)
    # 2) if multiple discs start at the same position (e[:start] * (e[:start]-1) / 2)
    
    # 1) if there are 3 discs that we're in the middle of and a new disc starts, it intersects with all 3 of them.  If there are 3 discs we're in the middle of and 2 new discs start, each of them will intersect with the 3 existing ones, making six interactions.
    # 2) If multiple discs start at the same location, some math is required.  It's groups of 2, so the number of intersections at each index is n*(n-1)/2 - for if multiple discs start at that index - plus n*past_starts for when discs are already in progress when we start a new one.  Add them all together and you have your solution.
    
    past_starts = 0
    intersects = 0
    sorted_events.each do |event|
        intersects += event[:start] * (event[:start]-1) / 2 + event[:start] * past_starts
        past_starts += event[:start]
        past_starts -= event[:stop]
    end
    
    intersects
    #puts "events: #{events}"
end








