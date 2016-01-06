public class Solution {

    public static void main(String[] args){
      ListNode test = new ListNode(2);
      test.next = new ListNode(1);
      //test.next.next = new ListNode(3);
      //test.next.next.next = new ListNode(2);
      //test.next.next.next.next = new ListNode(6);
      System.out.println("Original list: " + printList(test));
      test = insertionSortList(test);
      System.out.println("Sorted list: " + printList(test));

    }

    public static ListNode insertionSortList(ListNode head) {

      if (head == null || head.next == null){ return head; }

      ListNode current = head;
      ListNode compare = head.next;
      while (current.next != null){
        while (compare != null){
          System.out.println("current.val: " + current.val);
          System.out.println("compare.val: " + compare.val);
          if (compare.val < current.val) { swap(current, compare); }
          compare = compare.next;
        }
        current = current.next;
        compare = current.next;
      }
      return head;
    }

    public static void swap(ListNode a, ListNode b){
      int temp = a.val;
      a.val = b.val;
      b.val = temp;
    }

  public static String printList(ListNode head){
    String result = "[";
    while ( head.next != null ){
      result += head.val + ", ";
      head = head.next;
    }
    result += head.val + ", ";
    result = result.substring(0, result.length()-2);
    return result += "]";
  }

}
