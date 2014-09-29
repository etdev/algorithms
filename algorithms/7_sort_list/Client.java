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
    System.out.println("Splitting the list");
    ListNode node5 = MergeSort.splitNode(node1);
    System.out.println("Right: " + printList(node5));
    System.out.println("Left: " + printList(node1));

    System.out.println("Testing the merge method by merging " + printList(node5) + " and " + printList(node1));
    ListNode mergeResult = MergeSort.merge(node1, node5);
    System.out.println("Merge result: " + printList(mergeResult));

    node1 = new ListNode(5);
    node2 = new ListNode(3);
    node3 = new ListNode(-7);
    node4 = new ListNode(0);
    node1.next = node2;
    node2.next = node3;
    node3.next = node4;

    System.out.println("Testing the sort  method with " + printList(node1));
    ListNode sortResult = MergeSort.sortList(node1);
    System.out.println("Sort result: " + printList(sortResult));


  }

  public static String printList(ListNode head){
    int size = MergeSort.getSize(head);
    String result = "[";
    for(int i=0; i<size; i++){
      result += head.val + ", ";
      head = head.next;
    }
    return result += "]";
  }
}
