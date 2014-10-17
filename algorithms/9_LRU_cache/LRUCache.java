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
    if (elements.containsKey(key)) {
      LinkedList.Node n = elements.get(key);
      n.val = value;
      System.out.println("n's value: " + n.val + " n's prev: " + n.prev + " n's next: " + n.next);
      moveToEnd(n);
    }

    else{
      LinkedList.Node n = new LinkedList.Node(value);

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
    System.out.println("n.prev: " + n.prev.toString());
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
}

