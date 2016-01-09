import java.util.HashMap;

public class Solution {
  public static void main(String args[]) {
    final long startTime = System.nanoTime();

    String testString1 = "apples";
    String testString2 = "ppseal";
    String testString4 = "bananas";
    String testString5 = "appleX";
    String testString6 = null;
    String testString7 = "not null";
    String testString8 = "";
    String testString9 = "   a";
    String testString10 = "  a ";
    String testString11 = "a  ";
    System.out.println("---Begin test---");

    System.out.println("For " + testString1 + " and " + testString2 + ": ");
    System.out.println(isPermutation(testString1, testString2));

    System.out.println("For " + testString1 + " and " + testString4 + ": ");
    System.out.println(isPermutation(testString1, testString4));

    System.out.println("For " + testString1 + " and " + testString5 + ": ");
    System.out.println(isPermutation(testString1, testString5));

    System.out.println("For " + testString6 + " and " + testString6 + ": ");
    System.out.println(isPermutation(testString6, testString6));

    System.out.println("For " + testString6 + " and " + testString7 + ": ");
    System.out.println(isPermutation(testString6, testString7));

    System.out.println("For " + testString7 + " and " + testString8 + ": ");
    System.out.println(isPermutation(testString7, testString8));

    System.out.println("For " + testString8 + " and " + testString8 + ": ");
    System.out.println(isPermutation(testString8, testString8));

    System.out.println("For " + testString9 + " and " + testString10 + ": ");
    System.out.println(isPermutation(testString9, testString10));

    System.out.println("For " + testString10 + " and " + testString11 + ": ");
    System.out.println(isPermutation(testString10, testString11));

    /* Print total time spent */
    final long duration = System.nanoTime() - startTime;
    System.out.println("\nduration: " + duration/1000000000.0 + "s");
  }

  public static boolean isPermutation(String strA, String strB) {
    if (strA == null && strB == null) { return true; }
    if (strA == null || strB == null) { return false; }
    if (strA.length() != strB.length()) { return false; }
    int[] charCounts = new int[256];

    for (int i=0; i<strA.length(); i++) {
      int charA = strA.charAt(i);
      int charB = strB.charAt(i);

      charCounts[charA]++;
      charCounts[charB]--;
    }

    for (int i=0; i<strA.length(); i++) {
      int charA = strA.charAt(i);
      if (charCounts[charA] != 0) { return false; }
    }
    return true;
  }

}
