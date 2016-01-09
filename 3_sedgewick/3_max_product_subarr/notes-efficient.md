####Basic idea:
#####I want to make a better solution for this problem.

####Procedure:
#####I will keep track of the min and max products at each point in the array using recursion.  The first thing is to set it so that if A.length == 0, you return 0.  Basically at each element, you take the bigger of the element with maxherepre or minherepre, and then see which is bigger, that, or the element itself (i.e see if multiplying A[i] by either the most positive or most negative value so far yields a larger value than the previous maxsofar), then you reset the max and mins to the new ones.

Ex:
[1, 2, -3, 4] --> A[1] = 2:
  maxherepre = 1
  minherepre = 1
  maxsofar = 1
  maxhere, minhere are uninitialized
for A[1] to A[3] (1 --> length-1):
  maxhere = max(max(maxherepre*A[i], minherepre*A[i]), A[i])
    maxhere = max(max(1*2, 1*2), 2) = 2
  minhere = min(min(minherepre*A[i], minherepre*A[i]), A[i])
    minhere = min(min(1*2, 1*2), 2) = 2
  maxsofar = max(maxhere, maxsofar)
  maxsofar = max(1, 2) = 2
  maxherepre = maxhere = 2
  minherepre = minhere = 2

--A[2] = -3:
  maxherepre = 2
  minherepre = 2
  maxsofar = 2
  maxhere = max(max(maxherepre*-3, minherepre*-3), -3) = 2
  minhere = -3
  maxsofar = max(maxsofar, maxhere) = 2
  maxherepre = 2
  minherepre = -3

--A[3] = 4:
  maxherepre = 2
  minherepre = -3
  maxsofar = 2
  maxhere = max(max(2, -12), 4) = max(2, 4) = 4
  minhere = min(min(2, -12), 4) = min(-12, 4) = -12
  maxsofar = max(2, 4) = 4
  maxherepre = 4
  minherepre = -12
--end loop
return 4

#####Just to iterate the basic procedure one more time:
-Set maxhere = A[0]
-Set minhere = A[0]
-Set maxsofar = A[0]
-Then for the rest of the elements,
--Set maxhere to either the largest possible or smallest (most negative) possible value you can get from multiplying the current value with your most recent min and max values, or set it to the value itself if it's bigger than both results.
--Set minhere to the smallest possible value you can obtain under the same circumstances
--Set maxsofar to the current max if it's bigger than the previous max
--Reset maxherepre and minherepre to use for the next element

-Then at any point you should have both the max and min possible products.

####Things I learned:
* You can use Integer.MIN_VALUE to avoid one of the problems I had in the naive solution, where I was trying to set the starting product at 1 but then it was returning 1.
* I guess it's okay to just return 0 if given [] as an input etc.
* There's probably no point in memoizing because checking the number of negatives takes just as long as the algorithm itself
