### Pre-notes
The first thing I did was read up a little bit on binary trees in general.
* Binary trees are made up of nodes, where each node contains a data element, and pointers to a left node and a right node (in this case our data will be in the form of an int).
* A Binary tree can either be a null pointer, or a single node, which points to two more (left and right) binary trees (which can of course themselves also be null)
The next thing I did was read up on preorder, inorder, and postorder traversal of BTs.
![Example Binary Tree](http://upload.wikimedia.org/wikipedia/commons/d/d4/Sorted_binary_tree_preorder.svg)
* PreOrder traversal: Guess=FBADCEGIH, Actual=FBADCEGIH => I was right!
* InOrder traversal: Guess=FBGADICEH, Actual=ABCDEFGHI => I was completely wrong! (apparently this is level-order traversal)
  * Basically traverse the left subtrees until you can't anymore, add that node, then move up to parent and traverse the right subtree recursively
* PostOrder traversal: Guess=HIGFEDCBA, Actual=ACEDBHIGF => I was completely wrong!
  * Basically traverse the left subtree, then the right subtree, then print the current Node's datum
* These are all examples of Depth-first-search.
* Level-order traversal would be an example of Breadth-first-search.

### Code Skeleton
    public class Solution {
        public List<Integer> postorderTraversal(TreeNode root) {

        }

        public class TreeNode {
            int val;
            TreeNode left;
            TreeNode right;
            TreeNode(int x) { val = x; }
        }
    }

### Recursive solution
Apparently this is trivial so I'm going to try it first and make sure I can do it.  It didn't take me too long to come up with this:

    import java.util.*;

    public class Solution {
        ArrayList<Integer> list = new ArrayList<Integer>();

        public List<Integer> postorderTraversal(TreeNode root) {
          if (root == null) { return list; }
              postorderTraversal(root.left);
              postorderTraversal(root.right);
              list.add(root.val);
          return list;
        }
    }
The only thing I had to be careful of was how to deal with root being null.  First you check and see if it is, and if so you return list.  Then you recurse left and right, and then add the value and return list.  This code is stored in ``Solution-recursive.java``

### Iterative solution
The basic idea is that we want to print a node's left tree, then that node's right tree, then the node itself.
![](http://i.imgur.com/9hOSs1b.png)
When I do this manually myself, I:
* Look at the root node, and see if it has a left child node.
  * If it does, I move down to that left child node and start the process again.
  * If it doesn't, I check to see if it has a right child node.
    * If it does, I move down to that child node and start the process again.
    * If it doesn't, I add the value of the current node to the list and move up
      to the parent
  * I stop when I hit the root node.

The first problem that occurs to me is that this approach requires me to be able
to get back to the parent node from a child.  I'm wondering if I can use the
list for this purpose.  I don't think I can though, which means I'd need another
list.  I tried running through my thought process for my example image:

    15:
    -VISITED[15]
    -has unvisited left -> visit left
    5:
    -VISITED[15,5]
    -has unvisited left -> visit left
    3:
    -VISITED[15,5,3]
    -Doesn't have left
    -Doesn't have right
    -Add node to POST
    -Move up to element visited before current
    VISITED [15,5,3] POST [3]
    5:
    -VISITED [15,5,3]
    -Has left but visited
    -Has unvisited right -> visit right
    12:
    -VISITED [15,5,3,12]
    -Has unvisited left -> visit left
    10:
    -VISITED [15,5,3,12,10]
    -Has unvisited left -> visit left
    6:
    -VISITED [15,5,3,12,10,6]
    -No left
    -Has unvisited right -> Visit right
    7:
    -VISITED [15,5,3,12,10,6,7]
    -No left
    -No right
    -Add node, POST [3,7]
    6:
    -No left
    -Right, but visited
    -Add node to POST [3,7,6]
    10:
    -Left, but visited
    -No right
    -Add node to POST [3,7,6,10]
    12:
    -Left, but visited
    -Has unvisited right -> Visit right
    13:
    -VISITED [15,5,3,12,13]
    -No left
    -No right
    -Add node to POST [3,7,6,10,13]
    ...

    So basically:
    -If there's a left child:
    --If it's not in POST, move down to it.
    -If there's a right child:
    --If it's not in POST, move down to it.
    -Else (i.e. no non-null un-added children), move up to parent.

I'm going to implement a stack since I'm pretty sure it will be helpful.  Even if not, it'll be good practice.

### Solution v1
Here's the first working implementation I came up with (using the TreeNode class
defined on Leetcoder OJ):
import java.util.*;

    public class Solution {
        ArrayList<Integer> list = new ArrayList<Integer>();
        Stack visited = new Stack();

        public List<Integer> postorderTraversal(TreeNode root) {
          if (root == null) { return list; }
          TreeNode node = root;
          visited.push(node);
          while (visited.size > 0) {
            node = visited.pop();
            if (node.left != null) {
              visited.push(node.left);
            }
            if (node.right != null) {
              visited.push(node.right);
            }
            list.add(node.val);
          }
          Collections.reverse(list);
          return list;
        }

      public class Stack {
        ArrayList<TreeNode> list;
        public int size = 0;

        public Stack() {
          list = new ArrayList<TreeNode>();
        }

        public TreeNode pop() {
          TreeNode retVal = list.get(list.size()-1);
          list.remove(list.remove(list.size()-1));
          size--;
          return retVal;
        }

        public void push(TreeNode val) {
          list.add(val);
          size++;
        }

        public String toString() {
          return list.toString(); 
        }
      }
    }

As you can see, it's not perfect.  I don't think this would fly in an interview.
I'm pretty sure my Stack implementation works properly however, so I'm not sure
why I had to reverse the list to make it work.

Running through my test BT:
[15]
[5,16]
[5,20]
[5,18,23]
...
But I actually wanted:
[15]
[16,5]
[16,12,3]


