import java.util.Arrays;

//Simplest possible implementation of MergeSort using ints and an array
public class MergeSimple{

  // Basic idea: Split into N 1-element pieces, then merge them back

  public static int[] sort(int[] A){
    if (A.length == 1){ return A; }
    int mid=A.length/2;
    int[] right = new int[A.length-mid];
    int[] left = new int[mid];
    for(int i=0; i<mid; i++){
      left[i] = A[i];
    }
    for(int i=mid; i<A.length; i++){
      right[i-mid] = A[i];
    }
    return merge(sort(left), sort(right));
  }

  public static int[] merge(int[] a, int[] b){
    int currentA = 0;
    int currentB = 0;
    int[] result = new int[a.length+b.length];

    for(int i=0; i<result.length; i++){
      if( currentA == a.length ){ result[i] = b[currentB]; currentB++; }
      else if (currentB == b.length){ result[i] = a[currentA]; currentA++; }
      else{
        if (a[currentA] < b[currentB]) { result[i] = a[currentA]; currentA++; }
        else{ result[i] = b[currentB]; currentB++; }
      }
    }
    return result;
  }
}
