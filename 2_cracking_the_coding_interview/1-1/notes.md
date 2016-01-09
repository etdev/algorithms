### The problem
Implement an algorithm that checks to see whether a given string contains duplicate characters or not. Challenge: do it without using any additional data structures

### Questions for the interviewer
* What set of characters could possibly be included in the string? (e.g. if it's
"lowercase characters from a-z" then that may call for a different solution than
if it were "any ASCII character".
### General questions
* Should I convert the input string to a character array, or sould I keep it as
a String?
* What's the best way to avoid using a new data structure?

### Initial thoughts/strategy
Upon reading the problem my first thought is that I should iterate through the
characters in the string and count the occurences of each character.  Then if
one of these counts hits 2, return false (not unique).  If we get to the end of
the string without this happening, return true.  First I'm going to try this with ~~an
array since I know the max number of elements I'll need is the input string's
length.~~ a hash table since I suspect I'm going to want to be looking up
whether a given character exists in the table or not and lookups are O(1) for
hash tables.

### Initial algorithm attempt
```java
public boolean charsAreUnique(String str) {
  HashMap charCounts = new HashMap<Char, Integer>();
  for (int i=0; i<str.size(); i++) {
    if (charCounts.contains(str.charAt(i))) {
      return false;
    }
    else {
      charCounts.add(str.charAt(i), i);
    }
  }
  return true;
}
```

### Problems
I wrote this first attempt on paper without looking at any resources, which
resulted in code that doesn't run.

* I forgot what the function was called to check the length of a string.  Turns
out it's ``length()``.  Not ``size()``.
* I'm using an additional data structure.
* Hash tables map a key to a value, but I'm not using both of these.  I'm
actually just checking whether a single thing exists or not, and adding it if
not.  So I'm not sure a hash table is necessary.
* I forgot what the non-primitive version of ``char`` was (it's ``Character``).
* I forgot most of the ``HasMap`` method names.
* I used str.charAt() repeatedly which I feel can't be great for performance.

### Iteration #1
This time I looked up the method names I got wrong and other info that was necessary to at
least make the code run.
```java
public static boolean charsUnique(String str) {
  HashMap <Character, Integer> charCounts = new HashMap<Character, Integer>();
  for (int i=0; i<str.length(); i++) {
    char currentChar = str.charAt(i);
    if (charCounts.containsKey(currentChar)) {
      return false;
    }
    else {
      charCounts.put(currentChar, 1);
    }
  }
    return true;
}
```

### Problems
At least this time the code runs, but there are still some issues:
* I didn't check for any edge cases.  It does work for `""` but it fails when the
string is `null` (throws an exception).
* I'm still using an additional data structure (HashMap), and I don't think I'm
even using it effectively.

At this point I looked at the solution and saw that the author uses an ``Array``
the length of the set of possible characters.  I guess that makes sense.

### Final algorithm
```java
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
```
### Tests
The following rather rudimentary test code:
```java
public static void main(String args[]) {
  /* test code */
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
}
```
yielded the following output:

```java
---Begin test---
For abcdefg:
true
For aacdefg:
false
For :
true
For null:
true
```

### Things I learned
* The Java method to check the length of Strings is ``length()``.
* The Java method to check if a HashMap contains a given key or value is ``containsKey(Object key)`` or ``containsValue(Object value)`` respectively.  The method to add a new key/value pair is ``put(Object key, Object value)``.
* There are either 128 or 256 possible ASCII characters, depending on you who ask.
* Java's ``String#charAt()`` method runs in constant time.
* Use an array of booleans, not integers in these types of situations (i.e. when
you have a bunch of options and you want to see if a given option is taken or
not.  Booleans take up less space and can be used in logical comparisons
directly.
* You can't do ``if (!str)`` to check if a string is null.

### Remaining concerns / questions
* Null checking in Java still confuses me a little bit.  For example, if I want
to see if ``str`` is null, should I do ``if (str == null) { return true; }`` or something else?  Directly comparing it with ``null`` seems kind of weird.
* When you initialize an array with a given size, what do the various elements get initialized to? (does it depend on the type of the array?)
* Is it okay to return ``true`` when the input string is ``null``?  Not sure what the convention is in this case.
* Array search has ``O(n)`` complexity, so is it really better to use an Array here? (it does seem very fast in practice.)
