public class Solution {
  public int maxProduct(int[] A) {
    if (A.length == 0){ return 0; }
    int maxOld = A[0];
    int minOld = A[0];
    int currentMax = A[0];
    int maxHere, minHere;

    for (int i=1; i<A.length; i++){
      maxHere = max(max(maxOld*A[i], minOld*A[i]), A[i]);
      minHere = min(min(maxOld*A[i], minOld*A[i]), A[i]);
      currentMax = max(maxHere, currentMax);
      maxOld = maxHere;
      minOld = minHere;
    }
    return currentMax;
  }

  public int max(int a, int b){
    if (a>b) { return a; }
    else { return b; }
  }

  public int min(int a, int b){
    if (a<b) { return a; }
    else { return b; }
  }
}
