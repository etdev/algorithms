### The Problem (from [Codility]())
A non-empty zero-indexed array A consisting of N integers is given. A pair of integers (P, Q), such that 0 ≤ P ≤ Q < N, is called a slice of array A. The sum of a slice (P, Q) is the total of A[P] + A[P+1] + ... + A[Q].
Write a function ``def solution(a)`` that, given an array A consisting of N integers, returns the maximum sum of any slice of A.

### Strategy
Upon hearing this question I immediately thought of a naive solution that would have a runtime of O(N^2) time.  Basically you loop through the elements, and then for each element you loop through the remaining elements to create every possible subarray and keep track of the highest sum.  This would work, but it's too slow to be useful, so I had to keep thinking.

I think the hardest part about coding questions like this one is getting from the naive solution to a faster
The relationship I want to maximize:
``sum(A[P..Q])`` where P and Q are indices in A.

Things I need
* The current sum up to this point
* The largest sum we've hit so far
* The value of the current element

Then when adding the current element would cause our sum to go negative, we can throw it away and start over.

And when we hit an element where the sum at that point is greater than the largest sum we've encountered so far, we reset prev_max to that summed value.

### Test Array

### Solution - Ruby
Code
```ruby
def solution(a)
  # return -1 in case of invalid input
  return -1 unless a.is_a?(Array) && a.size > 0
  # if there's only one element, return it
  return a.first if a.size == 1

  # sum we're currently adding to
  running_sum = 0
  max_so_far = 0

  a.each do |el|
    # max at this element
    max_current = (el + running_sum) > el ? (el + running_sum) : el
    # sum of current subarray, reset if it goes below 0
    running_sum = max_current > 0 ? max_current : 0
    # set max_so_far if this is the largest sum we've encountered
    max_so_far = max_so_far > running_sum ? max_so_far : running_sum
  end

  # deal with the situation where there are no positive elements
  max_so_far == 0 ? a.max : max_so_far
end
```

Result
![Ruby result](http://i.imgur.com/sytQ9PV.png)
### Solution - Java
### Solution - Go

### Thoughts
Key
* The ``running_sum = max_current > 0 ? max_current : 0`` line **starts a new subarray when the max sum using the current element would cause the total sum to be less than zero**.

Gotchas
* The situation where all elements are negative.  I see two ways of dealing with this:
  * Assume an empty array ``[]`` has sum ``0`` and return 0 for arrays with only negative elements
  * Don't accept empty arrays, and return the max (least negative) value when there are only negative elements.  My solution employs this option.
