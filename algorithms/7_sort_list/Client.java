import java.util.Arrays;
import java.util.Random;

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
/*
    node1 = new ListNode(5);
    node2 = new ListNode(3);
    node3 = new ListNode(-7);
    node4 = new ListNode(0);
    node1.next = node2;
    node2.next = node3;
    node3.next = node4;
*/

    node1 = randomList(30000);
    //System.out.println("Testing the sort  method with " + printList(node1));
    long startTime = System.nanoTime();
    ListNode sortResult = MergeSort.sortList(node1);
    long endTime = System.nanoTime();
    long duration = (endTime - startTime)/1000000;
    System.out.println("Result: " + printList(sortResult));
    System.out.println("Time: " + duration + " miliseconds");
/*
    System.out.println("TESTING SIMPLE SORT: [1, 3, 2, -5, 10]");
    int[] simple = {1, 3, 2, -5, 10};
    long startTime = System.nanoTime();
    int[] result = MergeSimple.sort(simple);
    long endTime = System.nanoTime();
    long duration = (endTime - startTime)/1000000;
    System.out.println("Result: " + Arrays.toString(result) + ", Time: " + duration + " miliseconds");

    System.out.println("Simple testing some bigger arrays.  100:");
    int[] simple2 = randomArr(100);
    startTime = System.nanoTime();
    int[] result2 = MergeSimple.sort(simple2);
    endTime = System.nanoTime();
    duration = (endTime - startTime)/1000000;
    System.out.println("Time: " + duration + " miliseconds");

    System.out.println("1000:");
    int[] simple3 = randomArr(1000);
    startTime = System.nanoTime();
    int[] result3 = MergeSimple.sort(simple3);
    endTime = System.nanoTime();
    duration = (endTime - startTime)/1000000;
    System.out.println("Time: " + duration + " miliseconds");

    System.out.println("100,000:");
    int[] simple4 = randomArr(100000);
    startTime = System.nanoTime();
    int[] result4 = MergeSimple.sort(simple4);
    endTime = System.nanoTime();
    duration = (endTime - startTime)/1000000;
    System.out.println("Time: " + duration + " miliseconds");

    System.out.println("1,000,000:");
    int[] simple5 = randomArr(1000);
    startTime = System.nanoTime();
    int[] result5 = MergeSimple.sort(simple5);
    endTime = System.nanoTime();
    duration = (endTime - startTime)/1000000;
    System.out.println("Result: " + Arrays.toString(result5) + ", Time: " + duration + " miliseconds");
*/
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
