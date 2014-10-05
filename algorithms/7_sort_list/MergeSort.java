public class MergeSort{

  public static ListNode sortList(ListNode head){
    /*Basic idea: Take list, break it in half, sort the halves, and merge back*/
    return null;
  }

  public ListNode merge(ListNode a, ListNode b){
    ListNode result;
    if (a == null && b == null) { return null; }
    else if (a == null) { result = b; }
    else if (b == null) { result = a;}
    else{
      if (a.val <= b.val) { result = a; }
      else{ result = b; }
    }
    while ( !(a == null && b == null) ){
      if (a == null ) { add(result, b); return result; }
      else if (b == null) { add(result, a); return result; }
      else{
        if (a.val <= b.val) { add(result, a); a = a.next; }
        else{ add(result, b); b = b.next; }
      }
    }
    return result;
  }

  public static void add(ListNode a, ListNode b){
    while (a.next != null) { a = a.next; }
    a.next = b;
    a.next.next = null;
  }

  public static ListNode split(ListNode head){
    ListNode slow, moreSlow, fast; slow = head; moreSlow = head; fast = head;
    if ( fast.next != null && fast.next.next != null){
      slow = slow.next;
      fast = fast.next.next;
    }
    while( fast.next != null && fast.next.next != null ){
      slow = slow.next;
      moreSlow = moreSlow.next;
      fast = fast.next.next;
    }
    moreSlow.next = null;
    return slow;
  }

  public class ListNode{
    public int val;
    public ListNode next;
    public ListNode(int x){
      val = x;
      next = null;
    }
  }

  public static String printList(ListNode a){
    String result = "";
    while (a.next != null){
      result += a.val + ", ";
    }
    return result;
  }

}

