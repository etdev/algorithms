public class MergeSort{

  public static ListNode sortList(ListNode head) {
    if ( head == null || head.next == null ){ return head; }
    else{
      head = merge(sortList(splitNode(head)), sortList(head));
    }
    return head;
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
