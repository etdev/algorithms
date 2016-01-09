import java.util.*;

public class Solution {
    ArrayList<Integer> list = new ArrayList<Integer>();
    Stack visited = new Stack();

    public List<Integer> postorderTraversal(TreeNode root) {
      TreeNode node;
      visited.push(root);
      while (visited.size > 0) {
        node = visited.pop();
        if (node.left != null) {
          visited.push(node.left);
        }
        else if (node.right != null) {
          visited.push(node.right);
        }
        else { list.add(node.val); }
      }
      return list;
    }

    public TreeNode getDeepLeft(TreeNode currentNode) {
      while (currentNode.left != null) {
        currentNode = currentNode.left;
      }
      return currentNode;
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
