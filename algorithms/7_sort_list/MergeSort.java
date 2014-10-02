public class MergeSort{
  /*Basic idea:
    1. Divide the unsorted list into n sublists, each containing 1 element
    2. Repeatedly merge sublists to produce new sorted sublists until there is only 1 sublist remaining.
  */
  //I want it to work for a LinkedList, so I'm going to include the listNode class too.


  public static ListNode sortList(ListNode head) {
    //Base case: If it's only one element, just return that element
    if ( head == null || head.next == null ){ return head; }
    //Otherwise, cut it in half, sort the first half, sort the second half, and then merge them
    else{
      //Cut it in half and sort the halves
      //Merge them
      ListNode rightHalf = sortList(splitNode(head));
      ListNode leftHalf = sortList(head);
      return merge(leftHalf, rightHalf);
    }
  }

  public static int getSize(ListNode head) {
    int i=1;
    while (head.next != null){ i++; head = head.next;}
    return i;
  }

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
    /*I need to rethink how I'm merging my lists since I think this is the problem.
      -First we're given two sorted lists, e.g. a = [-5, 0, 2] and b = [-3, -2, 1, 8]
      -At any point in the merge process, the next element to be added can only be either the next active element from a, or the next active element from b.
      -So we need a way to keep track of this "active" element for each list.  I was trying to do this by maintaining a counter but I think it's better to use the attributes of the LinkedList data type for this.
      -We don't need to make a new result list; we can use the existing lists
    */
    int totalSize = getSize(a) + getSize(b);
    if (totalSize == 0) { return null; }
    else if (a == null){ return b; }
    else if (b == null){ return a; }
    else{
      ListNode result;
    }
  }

  public static void add(ListNode a, int val){
    ListNode currentNode = a;
    while (currentNode.next != null){
      currentNode = currentNode.next;
    }
    currentNode.next = new ListNode(val);
  }

}

