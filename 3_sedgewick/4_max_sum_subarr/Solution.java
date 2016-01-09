public class Solution{

  public static int maxSum(int[] A){
    int maxOld = A[0];
    int maxSoFar = A[0];
    int maxHere;

    for(int i=1; i<A.length; i++){
      maxHere = max(A[i]+maxOld, A[i]);
      maxSoFar = max(maxHere, maxSoFar);
      maxOld = maxHere;
    }

    return maxSoFar;
  }

  public static int max(int a, int b){
    if (a > b){ return a; }
    else { return b; }
  }
}
