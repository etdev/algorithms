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
Apparently this is trivial so I'm going to try it first and make sure I can do it.
