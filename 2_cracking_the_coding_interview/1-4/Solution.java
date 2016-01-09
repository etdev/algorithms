import java.util.HashMap;

public class Solution {
  public static void main(String args[]) {
    final long startTime = System.nanoTime();

    String testString1 = "apples   ";
    String testString2 = "   apples      ";
    String testString3 = "ba na na s         ";
    String testString4 = "   ";
    System.out.println("---Begin test---");

    System.out.println("For \"" + testString1 + "\": ");
    System.out.println(replaceSpaces(testString1.toCharArray(), 7));

    System.out.println("For \"" + testString2 + "\": ");
    System.out.println(replaceSpaces(testString2.toCharArray(), 9));

    System.out.println("For \"" + testString3 + "\": ");
    System.out.println(replaceSpaces(testString3.toCharArray(), 11));

    System.out.println("For \"" + testString4 + "\": ");
    System.out.println(replaceSpaces(testString4.toCharArray(), 1));

    /* Print total time spent */
    final long duration = System.nanoTime() - startTime;
    System.out.println("\nduration: " + duration/1000000000.0 + "s");
  }

  public static char[] replaceSpaces(char[] chars, int length) {
    if (chars == null) { return null; }
    if (length == 0) { return chars; }
    int spaceCount = 0;
    for(int i=0; i<length; i++) {
      if (chars[i] == ' ') {
        spaceCount++;
      }
    }
    int shortPos = length-1;
    int longPos = shortPos+(spaceCount*2);
    for (int i=0; i<length; i++) {
      if (chars[shortPos] == ' ') {
        chars[longPos] = '0';
        chars[longPos-1] = '2';
        chars[longPos-2] = '%';
        longPos -= 3;
        shortPos--;
      }
      else {
        chars[longPos] = chars[shortPos];
        shortPos--;
        longPos--;
      }
    }
    System.out.println("final:");
    printCharArray(chars);
    return chars;
  }

  public static void printCharArray(char[] arr) {
    System.out.print("[");
    for(char c : arr) {
      System.out.print(c + " ");
    }
    System.out.print("]\n");
  }

}
