import java.util.*;

public class Solution {
    public List<Integer> postorderTraversal(TreeNode root) {
      ArrayList<Integer> list = new ArrayList<Integer>();
      if (root == null) { return null; }
      else {
        postorderTraversal(root.left);
        postorderTraversal(root.right);
      }
      list.add(root.val);
      return list;
    }

    public class TreeNode {
        int val;
        TreeNode left;
        TreeNode right;
        TreeNode(int x) { val = x; }
    }
}
