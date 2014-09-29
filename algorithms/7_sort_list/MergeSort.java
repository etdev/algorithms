public class MergeSort{
  /*Basic idea:
    1. Divide the unsorted list into n sublists, each containing 1 element
    2. Repeatedly merge sublists to produce new sorted sublists until there is only 1 sublist remaining.
  */
  //I want it to work for a LinkedList, so I'm going to include the listNode class too.


  public static ListNode sortList(ListNode head) {
    if ( head == null || getSize(head) == 0){ return head; }
    //Base case: If it's only one element, just return that element
    if (head.next == null){ return head; }
    //Otherwise, cut it in half, sort the first half, sort the second half, and then merge them
    else{
      int size = getSize(head);
      //Cut it in half and sort the halves
      ListNode right = sortList(splitNode(head));
      ListNode left = sortList(head);
      //Merge them
      head = merge(left, right);
    }
    return head;
  }

  public static int getSize(ListNode head) {
    int i=1;
    while (head.next != null){ i++; head = head.next;}
    return i;
  }

  //Returns head of right half
  /*
     Let's pretend we have 5 items: 3->4->1->2->5
     Basically we want middlenode = 1, middleNodePre = 4.  halfSize = 5/2=2 so
     //middleNode = 3, i=0: middleNode=4, middleNodePre = 4
     //middleNode = 4, i=1: middleNode =1, middleNodePre = 4
     //middleNode = 1, i=2:

     //2 items: 3->4.  halfSize = 1.  middleNode=3, middleNodePre=3.
     //middleNode=3, i=0: middleNode=4, middleNodePre still=3

     4 items: 1->2->3->4, halfsize = 2
     middleNode = 1, middleNodePre = 1
     i=0, middleNode = 2.  middleNodePre = 2
     i=1, middleNode = 3.  middleNodePre = 2.
  */
  public static ListNode splitNode(ListNode head){
    int halfSize = getSize(head)/2;
    ListNode middleNode = head;
    ListNode middleNodePre = head;
    for(int i=0; i<halfSize; i++){
      middleNode = middleNode.next;
      if(i < halfSize-1){ middleNodePre = middleNode; }
    }
    middleNodePre.next = null;
    return middleNode;
  }

  public static ListNode merge(ListNode a, ListNode b){
    //So we have a=[1, 3, 5] and b=[-2, -1, 7] and we want to merge them:
    ListNode result;
    if (a == null && b == null){ return null; }
    else if (a == null) { result = new ListNode(b.val); b=b.next; }
    else if (b == null) { result = new ListNode(a.val); a=a.next; }
    else{
      if (a.val < b.val){ result = new ListNode(a.val); a=a.next; }
      else{ result = new ListNode(b.val); b=b.next; }
    }

    while(!(a == null && b == null)){
      if (a == null) { add(result, b.val); b = b.next; }
      else if (b == null) { add(result, a.val); a = a.next; }
      else{
        if (a.val < b.val){ add(result, a.val); a= a.next; }
        else{ add(result, b.val); b = b.next; }
      }
    }
    return result;
  }

  public static void add(ListNode a, int val){
    ListNode currentNode = a;
    while (currentNode.next != null){
      currentNode = currentNode.next;
    }
    currentNode.next = new ListNode(val);
  }

}
