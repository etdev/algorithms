import java.util.*;
public class LRUCache{

  HashMap<Integer, LinkedList.Node> elements;
  LinkedList list;
  int capacity;

  public LRUCache(int capacity) {
    this.elements = new HashMap<Integer, LinkedList.Node>();
    this.capacity = capacity;
    this.list = new LinkedList();
  }

  public int get(int key){
    if (elements.containsKey(key)){
      LinkedList.Node n = elements.get(key);
      moveToEnd(n);
      return n.val;
    }
    else { return -1; }
  }

  public void set(int key, int value){
      LinkedList.Node n = new LinkedList.Node(value);
    if (elements.containsKey(key)) {
      elements.put(key, n);
      moveToEnd(n);
    }

    else{
      if (list.size == capacity){
        list.head.next = list.head.next.next;
        list.head.next.prev = list.head;
        list.add(value);
        elements.put(key, n);
      }
      else{
        list.add(value);
        System.out.println("list size: " + list.size);
        elements.put(key, n);
      }
    }
  }

  public void moveToEnd(LinkedList.Node n){
    n.prev.next = n.next;
    n.next = list.tail;
    n.prev = list.tail.prev;
    list.tail.prev.next = n;
    list.tail.prev = n;
  }

  public String toString(){
    String result = "\n";
    LinkedList.Node n = list.head;
    for (int i=0; i<capacity+2; i++){
      result += n.toString();
      n = n.next;
    }
    return result;
  }
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
}
