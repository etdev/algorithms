####Description:
#####This program accepts an array of integers and returns the largest product of any contiguous subarray.  For example, given the array [2,3,-2,4], the contiguous subarray [2,3] has the largest product = 6, so it will return 6.

####Gotchas:
* It's important to realize that having an even number of negative signs means that the answer will be the full starting array.

####General thoughts:
#####I struggled with how to even get started on this problem.  I knew that when the array only contains one element you can just return that element, but after that I had no idea where to go.  So I started imagining what kinds of subarrays you get for various numbers of inputs:
```
[1] --> [1]
[1,2] --> [1], [2], [1,2]
[1,2,3] --> [1], [2], [3], [1,2], [2,3], [1,2,3]
[1,2,3,4] --> [1], [2], [3], [4], [1,2], [2,3], [3,4], [1,2,3], [2,3,4], [1,2,3,4]
```
#####So if we have N elements, it looks like we end up with:
```
N one-element subarrays
(N-1) two-element subarrays
(N-2) three-element subarrays
...
1 N-element subarray
```
#####At this point I'm thinking that I want to just check all pairs naively and not worry about negatives etc. (although I feel like I might end up having to use this info later to improve performance).  I had the idea to write a method that takes a subarray length and a number of elements and computes the max for that.  I struggled pretty hard with this problem, but I eventually came up with the following (naive and extremely inefficient) solution:
    public int maxProduct(int[] A) {
    int length = A.length;
    int max = getFirstMax(A);
    int tempMax = 1;
    if (length==1){ return max; }
    else{
      for(int i=2; i<=A.length; i++){
        tempMax = getMax(A, i);
        if (tempMax > max) { max = tempMax; }
      }
    }
    return max;
  }

  public int getFirstMax(int[] A){
    int max = A[0];
    for (int i=1; i<A.length; i++){
      if (A[i] > max) { max = A[i]; }
    }
    return max;
  }

  public int getMax(int[] A, int subLen){
    int max = getBaseMax(A, subLen);
    for(int i=1; i<=A.length-subLen; i++){
        int tempMax = 1;
      for (int j=i; j<subLen+i; j++){
        tempMax *= A[j];
      }
      if (tempMax > max) { max = tempMax; }
    }
    return max;
  }

  public int getBaseMax(int[] A, int subLen){
    int max = 1;
    for(int i=0; i<subLen; i++){
      max *= A[i];
    }
    return max;
  }
}
```
#####It works for small numbers of inputs, and at this point I was thinking about how to memoize my current code to make it faster, but then I realized that would be very difficult to do and there were probably better ways (involving the aforementioned negatives etc).  So I ended up just googling the problem since I was pretty stuck, and I realized that in the case where there are no zeros and an even number of negative signs, the answer is always the full array.  So after adding code to account for this, I ended up with this:
```
public class Solution {

  public int maxProduct(int[] A) {

    if (!containsZeros(A) && evenNegs(A)){
      return getMax(A, A.length);
    }
    int length = A.length;
    int max = getFirstMax(A);
    int tempMax = 1;
    if (length==1){ return max; }
    else{
      for(int i=2; i<=A.length; i++){
        tempMax = getMax(A, i);
        if (tempMax > max) { max = tempMax; }
      }
    }
    return max;
  }

  public int getFirstMax(int[] A){
    int max = A[0];
    for (int i=1; i<A.length; i++){
      if (A[i] > max) { max = A[i]; }
    }
    return max;
  }

  public int getMax(int[] A, int subLen){
    int max = getBaseMax(A, subLen);
    for(int i=1; i<=A.length-subLen; i++){
        int tempMax = 1;
      for (int j=i; j<subLen+i; j++){
        tempMax *= A[j];
      }
      if (tempMax > max) { max = tempMax; }
    }
    return max;
  }

  public int getBaseMax(int[] A, int subLen){
    int max = 1;
    for(int i=0; i<subLen; i++){
      max *= A[i];
    }
    return max;
  }

  public boolean containsZeros(int[] arr){
    for(int i=0; i<arr.length; i++){
      if( arr[i] == 0 ){ return true; }
    }
    return false;
  }

  public boolean evenNegs(int[] arr){
    int count = 0;
    for(int i=0; i<arr.length; i++){
      if (arr[i] < 0){ count++; }
    }
    if (count%2 == 1){ return false; }
    return true;
  }
}
```
#####Far from pretty and I'm not happy with it, but it does seem to work (it was accepted on leetcode OJ).  So I'll consider this my naive solution.

