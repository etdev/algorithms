import java.util.Arrays;

public class Solution {

  public static void main(String[] args){

    int[] arr = {-1, -2, -3, 0};
    int result = maxProduct(arr);
    //System.out.println("Result: " + result);
  }

  public static int maxProduct(int[] A) {

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

  public static int getFirstMax(int[] A){
    int max = A[0];
    for (int i=1; i<A.length; i++){
      if (A[i] > max) { max = A[i]; }
    }
    return max;
  }

  public static int getMax(int[] A, int subLen){
    //System.out.println("Getting max for " + Arrays.toString(A) + ", subLen = " + subLen);
    int max = getBaseMax(A, subLen);
    //System.out.println("A.length: " + A.length + " subLen: " + subLen);
    for(int i=1; i<=A.length-subLen; i++){
        int tempMax = 1;
        //System.out.println("i is: " + i);
      for (int j=i; j<subLen+i; j++){
        //System.out.println("  j is: " + j + ", tempMax is: " + tempMax);
        tempMax *= A[j];
        //System.out.println("    new tempMax is: " + tempMax);
      }
      if (tempMax > max) { max = tempMax; }
    }
    //System.out.println("Max: " + max);
    return max;
  }

  public static int getBaseMax(int[] A, int subLen){
    int max = 1;
    for(int i=0; i<subLen; i++){
      max *= A[i];
    }
    return max;
  }

  public static boolean containsZeros(int[] arr){
    for(int i=0; i<arr.length; i++){
      if( arr[i] == 0 ){ return true; }
    }
    return false;
  }

  public static boolean evenNegs(int[] arr){
    int count = 0;
    for(int i=0; i<arr.length; i++){
      if (arr[i] < 0){ count++; }
    }
    if (count%2 == 1){ return false; }
    return true;
  }
}
