public class MergeSort{
  /*Basic idea:
    1. Divide the unsorted list into n sublists, each containing 1 element
    2. Repeatedly merge sublists to produce new sorted sublists until there is only 1 sublist remaining.
  */
  //I want it to work for a LinkedList, so I'm going to include the listNode class too.


  public ListNode sort(ListNode head) {
    //Base case: If it's only one element, just return that element
    if (head.next == null){ return head; }
    //Otherwise, cut it in half, sort the first half, sort the second half, and then merge them
    else{
      int size = getSize(head);
      //Cut it in half
      splitNode(head);
      //Sort the halves
      //Merge them
    }
    return head;
  }

  public static int getSize(ListNode head) {
    int i=1;
    while (head.next != null){ i++; head = head.next;}
    return i;
  }

  public static ListNode getNode(ListNode head, int index){
    ListNode resultNode = head;
    for(int i=0; i<index; i++){
      resultNode = resultNode.next;
    }
  }

  //Returns head of right half
  public static ListNode splitNode(ListNode head){
    int halfSize = getSize(head)/2;
    ListNode middleNode = head;
    for(int i=0; i<halfSize; i++){
      middleNode = middleNode.next;
    }
  }

}
