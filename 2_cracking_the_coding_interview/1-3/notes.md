### The problem
Given two strings, write a method to decide if one is a permutation of the other.

### Initial algorithm attempt
```java
public static boolean isPermutation(String strA, String strB) {
  if (strA == null && strB == null) { return true; }
  if (strA == null || strB == null) { return false; }
  if (strA.length() != strB.length()) { return false; }
  int[] charCounts = new int[256];
  for( int i=0; i<strA.length(); i++) {
    int charA = strA.charAt(i);
    int charB = strB.charAt(i);
    charCounts[charA] += 1;
    charCounts[charB] -= 1;
  }
  for (int i=0; i<256; i++) {
    if (charCounts[i] != 0) {
      return false;
    }
  }
  return true;
}
```

### Final algorithm
```java
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
```
It differs somewhat from the solution in the book, but I think (hope) it's fine.

### Tests
```java
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
```
Output:
```java
---Begin test---
For apples and ppseal:
true
For apples and bananas:
false
For apples and appleX:
false
For null and null:
true
For null and not null:
false
For not null and :
false
For  and :
true
For    a and   a :
true
For   a  and a  :
false

duration: 6.0E-4sva
```

### Thoughts
* What's the best way to test for null values at the beginning of algorithms
like this one?  My method works but seems inefficient.  Also
* This only works if it's an ASCII character; I want to try extending it to make it work for UTF-8 or some theoretical encoding with an unlimited number of possible values.
* My initial attempt doesn't deal with extra whitespace (i.e. "god  " and "dog"
would return false).  This is something that would probably be a good idea to
ask the interviewer.
* There's also the question of case insensitivity; I assumed that the comparison
is case sensitive, but that's also something that would be a good idea to ask.
* I did ``charCounts[charA] += 1`` instead of ``charCounts[charA]++``
* I iterated through the whole 256-element array, which was unnecessary.  I know
which characters the strings contain, so it makes more sense to visit the
``charCounts`` array at the indices stored in those Strings.
* I'm never sure when to convert a string to a CharArray and when not to.
* The default value for newly initialized arrays depends on the type, but for
``int[]`` arrays, it's ``0``.  For non-primitives it's ``null``.
* Is it okay to be using ``charAt`` so extensively?

