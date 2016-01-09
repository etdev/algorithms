import java.util.HashMap;

public class Solution {
  public static void main(String args[]) {
    final long startTime = System.nanoTime();

    String testString1 = "abcdefg";
    String testString2 = "aacdefg";
    String testString3 = "";
    String testString4 = null;
    System.out.println("---Begin test---");
    System.out.println("For " + testString1 + ": ");
    System.out.println(allCharsUnique(testString1));
    System.out.println("For " + testString2 + ": ");
    System.out.println(allCharsUnique(testString2));
    System.out.println("For " + testString3 + ": ");
    System.out.println(allCharsUnique(testString3));
    System.out.println("For " + testString4 + ": ");
    System.out.println(allCharsUnique(testString4));

    /* Print total time spent */
    final long duration = System.nanoTime() - startTime;
    System.out.println("\nduration: " + duration/1000000000.0 + "s");
  }

  public static boolean allCharsUnique(String str) {
    if (str == null) { return true; }
    if (str.length() > 256) { return false; }
    boolean[] includedChars = new boolean[256];
    for (int i=0; i<str.length(); i++) {
      int currentChar = str.charAt(i);
      if (includedChars[currentChar]) {
        return false;
      }
      else {
        includedChars[currentChar] = true;
      }
    }
    return true;
  }
}
