import java.util.Arrays;
import java.util.Random;

public class Client{
  public static void main(String[] args){

    ListNode node1 = randomList(1000000);
    MergeSort.sortList(node1);
    //System.out.println("Test list: " + printList(node1));
    System.out.println("Sorted: " + printList(MergeSort.sortList(node1)));

  }

  public static String printList(ListNode head){
    String result = "[";
    while ( head.next != null ){
      result += head.val + ", ";
      head = head.next;
    }
    result = result.substring(0, result.length()-2);
    return result += "]";
  }

  public static int[] randomArr(int size){
    int[] result = new int[size];
    Random generator = new Random();
    for(int i=0; i<size; i++){
      int r = generator.nextInt(1000) - 500;
      result[i] = r;
    }
    return result;
  }

  public static ListNode randomList(int size){
    Random generator = new Random();
    ListNode head = new ListNode(generator.nextInt(1000)-500);
    ListNode currentNode = new ListNode(generator.nextInt(1000)-500);
    head.next = currentNode;
    for(int i=0; i<size; i++){
      currentNode.next = new ListNode(generator.nextInt(1000)-500);
      currentNode = currentNode.next;
    }
    return head;
  }

}
