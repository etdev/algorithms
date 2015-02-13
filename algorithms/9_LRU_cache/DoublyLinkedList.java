public class DoublyLinkedList {

  Node head;
  Node tail;

  public DoublyLinkedList() {
    head = new Node(-1, null, null);
    tail = new Node(-1, null, null);
    head.next = tail;
    tail.prev = head;
  }

  public void add(int _val) {
    // Head -> 1 -> 2 -> Tail
    // Head -> 1 -> 2 -> 3 -> Tail
    //   So basically, get the second to last node, currentNode
    Node newNode = new Node(_val, null, null);
    Node oldPreTail = tail.prev;
    //   Then set current.next = n and Tail.prev = n
    oldPreTail.next = newNode;
    tail.prev = newNode;
    //   Then set n.prev = current and n.next = tail
    newNode.prev = oldPreTail;
    newNode.next = tail;
  }

  public int removeFirst() {
    // Head -> 1 -> 2 -> Tail
    //   Head -> 2 -> Tail
    // So, oldNode.prev.next = oldNode.next and oldNode.next.null and oldNode.prev = null
    Node oldNode = head.next;
    oldNode.prev.next = oldNode.next;
    oldNode.next = null;
    oldNode.prev = null;
    return oldNode.val;
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
