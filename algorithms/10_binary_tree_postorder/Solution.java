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
