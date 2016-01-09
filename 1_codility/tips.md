## Tips
1. Try to **limit the number of values**, etc. you need to deal with
 * On the **missing integer** problem, you have an array with up to 100,000 vals which can be from ``[-2,147,483,648..2,147,483,647]``, but you know the minimum value can't be above 100,001 so you can just eject both negative values and anything above 100,001.  (You could also then count the number of elements in the resulting array, and use that to decrease the number of iterations you need to do.  It's already O(N) but still).

2. Use a hash table and set its keys to the values of an array etc. and its value to true/false etc. to keep track of whether values exist in an array etc in constant time.

3. You can set the default value of hash elements like this:

```ruby
  event = Hash.new{ |h, k| h[k] = {:start => 0, :stop => 0} }
```
 * This is useful when you want to keep track of something in a hash and be able to increment values, by setting them to 0 by default instead of nil.

4. Recognize permutations and (especially) combinations.
  * Combination (only care about which elements are included, not their order): **``n! / r!(n-r)!``**
  * If 5 people all shake hands with each other, how many handshakes have occurred?
    * Groups of 2, so you have to pick 2.  First pick, there are 5 options, then there are 4 options, so 5 x 4 = 20.  But, b/c when person A shakes person B's hand, it's the same as when person B shakes person A's hand, we have to divide our result by 2, as to not double the count.
  * In the disc intersections problem, if there are 5 new discs starting at a position, the # of intersections btwn them is equal to 5x4/2 = 10.
  * So the number of intersections at each index is n x (n-1)/2 - for if multiple discs start at that index - plus n x past_starts for when discs are already in progress when we start a new one.
  * Permutation (care about both which elements are present and their order): **``n! / (n-r)!``**

5. Recognize "slice" problems
When you see a problem like finding the **max sum of sub-arrays** in an array, or the **max difference of any 2 elements** in an array, etc...
* There will be a relationship like maximize subarr.inject{|x,y| x+y}, but you need to switch the focus from the range to a relationship
that uses the state of the system **up to that point** and the situation **at that point**, so that you can do it in O(N) time.
Stock price example:
```ruby
def solution(a)
  return -1 unless a.is_a?(Array) && a.size > 0
  return 0 if a.size == 1
  max_end = 0
  max_slice = 0
  a.drop(1).each_index do |i|
    diff = a[i] - a[i-1]
    temp_max = max_end + diff
    max_end = temp_max < 0 ? 0 : temp_max
    max_slice = max_slice < max_end? max_end : max_slice
  end
end
```


