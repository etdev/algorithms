import java.util.*;

public class LRUCache {

  DoublyLinkedList dll;
  int capacity;
  int filled;
  HashMap<Integer, Node> map;

  public LRUCache(int capacity) {
    this.capacity = capacity;
    this.filled = 0;
    dll = new DoublyLinkedList();
    map = new HashMap<Integer, Node>();
  }

  public int get(int key) {
    // If map contains that key and the key points to an active node, refresh that node and return its value
    if (map.containsKey(key) && map.get(key).val != -1) {
      Node n = map.get(key);
      dll.refresh(n);
      return n.val;
    }
    // Else, return -1
    else {
      return -1; 
    }
  }

  public void set(int key, int value) {
    // If map contains that key and the corresponding node is active, refresh the corresponding node and set its value to the provided value
    if (map.containsKey(key) && map.get(key).val != -1) {
      Node n = map.get(key);
      n.val = value;
      dll.refresh(n);
    }
    // Else
    else {
      // If map isn't full
      if (filled < capacity) {
        // Add the new value
        Node n = new Node(value, null, null);
        dll.add(n);
        map.put(key, n);
        filled++;
      }
      // If map is full
      else {
        //   Delete the oldest entry and add the new value
        dll.head.next.val = -1;
        dll.remove(dll.head.next);
        Node n = new Node(value, null, null);
        dll.add(n);
        //System.out.println(" Adding " + n);
        map.put(key, dll.tail.prev);
      }
    }
  }

  public void printMap() {
    System.out.print("\n[");
    for (Map.Entry<Integer, Node> entry : map.entrySet()) {
      System.out.print("(key:" + entry.getKey() + ", val:" + entry.getValue() + "), ");
    }
    System.out.print("]");
  }
  
  public class DoublyLinkedList {

    Node head;
    Node tail;

    public DoublyLinkedList() {
      head = new Node(-1, null, null);
      tail = new Node(-1, null, null);
      head.next = tail;
      tail.prev = head;
    }

    public void add(Node newNode) {
      // Get the node that was last, and replace it with the new node
      Node oldPreTail = tail.prev;
      oldPreTail.next = newNode;
      tail.prev = newNode;
      newNode.prev = oldPreTail;
      newNode.next = tail;
    }

    public void remove(Node oldNode) {
      oldNode.prev.next = oldNode.next;
      oldNode.next.prev = oldNode.prev;
    }

    public void refresh(Node n) {
      remove(n);
      add(n);
    }

    public String toString() {
      String str = "[head->";
      Node currentNode = head.next;
      while (currentNode != tail) {
        str += currentNode + "->";
        currentNode = currentNode.next;
      }
      return str + "tail]";
    }
  }

  public class Node {
    int val;
    Node prev;
    Node next;

    public Node(int _val, Node _prev, Node _next) {
      val = _val;
      prev = _prev;
      next = _next;
    }

    public String toString() {
      return "(" + val + ")";
    }
  }
}
