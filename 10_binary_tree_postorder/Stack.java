import java.util.ArrayList;

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
