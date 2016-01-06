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
    ListNode mid = head;
    ListNode midPre = head;
    for(int i=0; i<halfSize; i++){
      mid = mid.next;
      if(i < halfSize-1){ midPre = mid; }
    }
    midPre.next = null;
    return mid;
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
    ListNode current = result;

    while(!(a == null && b == null)){
      if (a == null) { current.next = new ListNode(b.val); b = b.next; current = current.next; }
      else if (b == null) { current.next = new ListNode(a.val); a = a.next; current = current.next; }
      else{
        if (a.val < b.val){ current.next = new ListNode(a.val); a= a.next; current = current.next; }
        else{ current.next = new ListNode(b.val); b = b.next; current = current.next; }
      }
    }
    return result;
  }
}
