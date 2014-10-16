/* Doubly linked list implementation */

public class LinkedList {

  public Node head;
  public Node tail;
  public int size;

  public LinkedList(){
    this.head = new Node(-1);
    this.tail = new Node(-1);
    head.next = tail;
    head.prev = null;
    tail.prev = head;
    tail.next = null;
    this.size = 0;
  }

  public void add(int v){
    Node n = new Node(v);
    tail.prev.next = n;
    n.prev = tail.prev;
    n.next = tail;
    tail.prev = n;
    this.size++;

  }

  public Node removeFirst(){
    Node n = head.next;
    head.next = head.next.next;
    this.size--;
    return n;
  }

  public String toString(){
    Node n = this.head;
    String result = "\n";
    for(int i=0; i<size+2; i++){
      System.out.println("n: " + n.toString());
      result += n.toString() + "-->";
      n = n.next;
    }
    return result+"\n";
  }

  public static class Node{

    public int val;
    public Node next;
    public Node prev;

    public Node(int v){
      this.val = v;
    }

    public String toString(){
      if (this.next == null){ return "| TAIL |"; }
      else if (this.prev == null){ return "| HEAD |"; }
      else{ return " | " + this.val + " | "; }
    }
  }
}
