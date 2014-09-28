####Basic description:
#####This program takes an array of integers/operators in Reverse Polish notation and evaluates them, returning the answer.  For example, ["2", "1", "+", "3", "*"] -> ((2+1) * 3) -> 9.

####Procedure
#####My first thought was that this was begging to use a stack, so I started out by just implementing one of those in its own file, Stack.java.  I limited it to a String stack, and my code is in Stack.java.  So then I started thinking about the actual problem, and I had the following thoughts:

Example input: ["2", "1", "+", "3", "*"] --> ((2+1) * 3) -> 9
Example input: ["4", "13", "5", "/", "+"] --> (4 + (13 / 5)) -> 6
So basically, If you have xy*, it means multiply x and y.  But sometimes x or y will be a product of another multiplication, like 4,13,5,/,+ means (13/5) + 4
What happens if you just go through and put the elements on their respective stacks?
  Operator stack: [2, 1, 3] --> 3, 1, 2 pop order
  Operand stack: [+, *] --> *, + pop order
What if you go through backwards and do it?
  Operator stack: [3, 1, 2] --> 2, 1, 3 pop order
  Operand stack: [*, +] --> +, * pop order
  Ex.2: Operator [5, 13, 4] --> 4, 13, 5 pop order
  Ex.2: Operand [+, /] --> /, + pop order
How about frontwards for operators and backwards for operands:
   3, 1, 2 pop order
   +, * pop order
   4, 13, 5 pop order
   /, + pop order
I think you basically have to add an element, see if you're now able to do an operation, and if so do it.  i.e.
/*
   [], [], 2.  Can't do anything, put on stack
   [2], [], 1.  Can't do anything, put on stack.
   [2,1], [], + CAN do something; do this operation on top 2 elements from operand stack and ?store answer on operand stack
   [3], [], 3.  Can't do anything, put on stack
   [3,3], [], * CAN do something, do the operation --> 9, put result on stack
   [9], [], END.  Pop remaining element off operator stack and return it
   -No more elements, so return contents of operand stack
*/

/*
   [], [], 4.  Can't do anything, put on stack
   [4], [], 13. Can't do anything, put on stack
   [4,13], [], 5.  Can't do anything, put on stack
   [4,13,5], [], / CAN do operation, do it and put result on stack
   [4,2], [], + CAN do operation, do it and put result on stack
   [6], [] , END, return contents of operand stack
*/

It looks like I'm on the right track, so I'm going to try and code this up.
