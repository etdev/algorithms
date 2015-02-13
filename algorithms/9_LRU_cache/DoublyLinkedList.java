public class DoublyLinkedList {

  Node head;
  Node tail;
  int capacity;
  int filled;

  public DoublyLinkedList(int capacity) {
    head = new Node(-1, null, null);
    tail = new Node(-1, null, null);
    head.next = tail;
    tail.prev = head;
    filled = 0;
    for (int i=0; i<capacity; i++) {
      add(new Node(-1, null, null));
    }
  }

  public void add(Node n) {
    // Head -> 1 -> 2 -> Tail
    // Head -> 1 -> 2 -> 3 -> Tail
    //   So basically, get the second to last node, currentNode
    Node oldPreTail = tail.prev;
    //   Then set current.next = n and Tail.prev = n
    oldPreTail.next = n;
    tail.prev = n;
    //   Then set n.prev = current and n.next = tail
    n.prev = oldPreTail;
    n.next = tail;
  }

  public String toString() {
    String str = "[";
    Node currentNode = head.next;
    for(int i=0; i<capacity; i++) {
      str += currentNode;
    }
    return str + "]";
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
