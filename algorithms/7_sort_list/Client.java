public class Client{
  public static void main(String[] args){
    MergeSort m = new MergeSort();
    ListNode node1 = new ListNode(5);
    ListNode node2 = new ListNode(3);
    ListNode node3 = new ListNode(-7);
    ListNode node4 = new ListNode(0);
    node1.next = node2;
    node2.next = node3;
    node3.next = node4;
    System.out.println("Adding 5, 3, -7, 0.\nSize: " + MergeSort.getSize(node1));

  }

  public static String printList(ListNode head){
    int size = MergeSort.getSize(head);
    String result = "[";
    for(int i=0; i<size){
      String += head.val + " ";
      head = head.next;
    }
    return result += "[";
  }
}
