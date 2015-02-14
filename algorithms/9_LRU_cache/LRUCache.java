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
    // If map contains that key, refresh that node and return its value
    if (map.containsKey(key) && map.get(key).val != -1) {
      Node n = map.get(key);
      dll.refresh(n);
      return n.val;
    }
    // Else, return -1
    else {
      return -1; }
  }

  public void set(int key, int value) {
    // If map contains that key, refresh the corresponding node and set its value to the provided value
    if (map.containsKey(key) && map.get(key).val != -1) {
      Node n = map.get(key);
      n.val = value;
      dll.refresh(n);
    }
    // Else
    else {
      // If map isn't full
      if (filled < capacity) {
        //System.out.println("  Map isn't full");
        // Add the new value
        dll.add(new Node(value, null, null));
        map.put(key, dll.tail.prev);
        filled++;
      }
      // If map is full
      else {
        //System.out.println("  Map is full");
        //   Delete the oldest entry and add the new value
        //System.out.println(" Removing " + dll.head.next);
        dll.head.next.val = -1;
        dll.remove(dll.head.next);
        Node n = new Node(value, null, null);
        dll.add(n);
        //System.out.println(" Adding " + n);
        map.put(key, dll.tail.prev);
      }
    }
  }

  public String toString() {
    return dll.toString();
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
      // Head -> 1 -> 2 -> Tail
      // Head -> 1 -> 2 -> 3 -> Tail
      //   So basically, get the second to last node, currentNode
      Node oldPreTail = tail.prev;
      //   Then set current.next = n and Tail.prev = n
      oldPreTail.next = newNode;
      tail.prev = newNode;
      //   Then set n.prev = current and n.next = tail
      newNode.prev = oldPreTail;
      newNode.next = tail;
    }

    public void remove(Node oldNode) {
      oldNode.prev.next = oldNode.next;
      oldNode.next.prev = oldNode.prev;
      //oldNode.prev = null;
      //oldNode.next = null;
      //return oldNode.val;
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
