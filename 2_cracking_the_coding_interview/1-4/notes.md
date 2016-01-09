### The problem
Write a method to replace all spaces in a string with ``'%20'``

### Initial algorithm attempt
```java
  public static char[] replaceSpaces(char[] str, int length) {
    if (str == null) { return null; }
    int actualLength = str.length;
    for(int i=1; i<= length; i++) {
      if (str[length-i] == ' ') {
        str[actualLength-i] = '0';
        str[actualLength-i-1] = '2';
        str[actualLength-i-2] = '%';
      }
      else { str[actualLength-i] = str[length-i]; }
    }
    return str;
  }
```
This code runs, but gives incorrect output.  There are some fundamental errors in my logic.  ``i`` is only counting to ``length``.  So if length is ``10`` and actualLength is ``20``, it will never actually get close to the beginning of the string (``str[20-10-2]`` is the furthest left it would get before stopping).  So clearly I have to rethink my for loop.  I think I need to use a while loop instead and increment by 3 instead of 1 when the character in question is a space.

### Iteration #1
```java
public static char[] replaceSpaces(char[] str, int length) {
  if (str == null) { return null; }
  int actualLength = str.length;
  int i = 0;
  while(i<actualLength) {
    if (str[length-i] == ' ') {
      str[actualLength-i] = '0';
      str[actualLength-i-1] = '2';
      str[actualLength-i-2] = '%';
      i+=3;
    }
    else {
      str[actualLength-i] = str[length-i];
      i++;
    }
  }
  return str;
}
```
This immediately errors out, because I set i to 0 and then didn't do
``str[actualLength-1-i]`` etc.

### Iteration #2
```java
public static char[] replaceSpaces(char[] charArr, int length) {
  if (charArr == null) { return null; }
  if (length == 0) { return charArr; }
  int hard = charArr.length-1;
  int soft = length-1;
  while(soft >= 0) {
    if (charArr[soft] == ' ') {
      charArr[hard] = '0';
      charArr[hard-1] = '2';
      charArr[hard-2] = '%';
      hard -= 3;
      soft--;
    }
    else {
      charArr[hard] = charArr[soft];
      hard--;
      soft--;
    }
  }
  return charArr;
}
```
This implementation works as long as you assume that the input charArray has
exactly the right number of spaces to fit the edited charArray.  If it has extra
space at the end, it will fail.  I looked at the solution in the book and while
it requires two passes through the charArray, I think it's a better solution
overall.  So I want to try counting the spaces first and then using that info
when iterating.

### Final algorithm
```java
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
  return chars;
}
```
(I experimented with some different variable names this time.  Naming is
hard...)
I think this is a better way of solving the problem overall, and this way is
much closer to the solution in the book.
This solution is actually imperfect though.  I don't need the ``shortPos`` variable;
I could have just used ``i``.  So I'll try to remember that for next time (or
use a ``while loop``), but I think it's good enough.

### Tests
```java
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
```
Output:
```java
---Begin test---
For "apples   ":
final:
[a p p l e s % 2 0 ]
apples%20
For "   apples      ":
final:
[% 2 0 % 2 0 % 2 0 a p p l e s ]
%20%20%20apples
For "ba na na s         ":
final:
[b a % 2 0 n a % 2 0 n a % 2 0 s % 2 0 ]
ba%20na%20na%20s%20
For "   ":
final:
[% 2 0 ]
%20

duration: 0.00123s
```

### Thoughts
* Could the first character be a space?  I'll assume so, since i don't think it
will hurt my ability to apply the algorithm I'm imagining.
* What's the deal with ``null`` integer values.  For example in ``public static
String replaceSpaces(String str, int length)``, what if ``length`` is ``null``?
* To get a ``String`` from an array of characters, you can do ``String str = new
String(charArray);``
* You (obviously) can't just do ``str = str.toCharArray();`` to get a character
array version of a string.
* I forgot to use ``str[length-1-i]`` instead of ``str[length-i]``.
* I'm still making stupid mistakes like forgetting the parentheses in if
statements and not paying attention to what I'm naming my method.
* Be aware of when to use the ``i`` variable from a for loop and when to make a new variable.
