Basic description:
This code takes a string with words separated by spaces, and reverses them (e.g. " the sky is blue" --> "blue is sky the")
-A sequence of non-space characters constitute a word
-It can handle leading and trailing spaces
-It can handle words being separated by more than a single space

Gotchas:
-Knowing how to deal with strings like " " and "  "
--Basically I checked for this and returned "" in these cases.
-Normalizing to a single space between words
--I went through at the beginning and used replaceAll(" +", " ").trim(); to get rid of the extra spaces.  replaceAll("\\s+", " ").trim(); also works.  trim() is a convenient method that gets rid of all leading and trailing spaces in a string.
-Dealing with even vs. odd numbers of words when swapping
--This ended up being a non-issue since using for( int i=0; i<length/2; i++ ) as the condition of the loop where you do the swap works for both cases.
-In the swap, you have to do words[i] = words[length-1-i] which is potentially confusing

Other thoughts:
-I tried using StringBuilder since it's supposedly more efficient, but I'm sure there are still tons of other optimizations I could make.

