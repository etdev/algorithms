import java.util.HashMap;

public class Solution {
  public static void main(String args[]) {
    final long startTime = System.nanoTime();

    String testString1 = "aabcccccaaa";
    String testString2 = "";
    String testString3 = "AAAAAAAAAAAAAAAAAXXXXXXXXXXXXXXXXXXXXXXXXAAAAAAAAAAAAAAAAAAXXXXXXbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbc";
    String testString4 = "aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111111111111111112111111111111111111111115555555555555555555aaaaaaaabbbbbccccccccccddd1111111";

    //System.out.println("For \"" + testString1 + "\": ");
    System.out.println(compressString(testString1));

    //System.out.println("For \"" + testString2 + "\": ");
    System.out.println(compressString(testString2));

    //System.out.println("For \"" + testString3 + "\": ");
    System.out.println(compressString(testString3));

    //System.out.println("For \"" + testString4 + "\": ");
    System.out.println(compressString(testString4));

      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);
      compressString(testString4);


    /* Print total time spent */
    final long duration = System.nanoTime() - startTime;
    System.out.println("\nduration: " + duration/1000000000.0 + "s");
  }

  public static String compressString(String str) {
    if(str == null) { return null; }
    if(str.length() < 3) { return str; }

    StringBuffer newSB = new StringBuffer();
    char currentChar = str.charAt(0);
    int sameCount = 1;

    for (int i=1; i<str.length(); i++) {
      if (str.charAt(i) == currentChar) {
        sameCount++;
      }
      else {
        newSB.append(currentChar);
        newSB.append(sameCount);
        currentChar = str.charAt(i);
        sameCount = 1;
      }
      if (newSB.length() >= str.length()) {
        return str;
      }
    }
    newSB.append(currentChar);
    newSB.append(sameCount);
    return newSB.toString();
  }

  public static void printCharArray(char[] arr) {
    System.out.print("[");
    for(char c : arr) {
      System.out.print(c + " ");
    }
    System.out.print("]\n");
  }
}
