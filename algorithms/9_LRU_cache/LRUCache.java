public class LRUCache{

  HashMap<Integer, Node> elements;
  LinkedList list;
  int capacity;

  public LRUCache(int capacity) {
    this.elements = new HashMap<Integer, Node>();
    this.capacity = capacity;
    this.list = new LinkedList();
  }

  public int get(int key){
    if (elements.containsKey(key)){
      Node n = elements.get(key);
      moveToEnd(n);
      return n.val;
    }(
    else { return -1; }
  }

  public void set(int key, int value){
      Node n = new Node(value);
    if (elements.containsKey(key)) {
      elements.put(key, n);
      moveToEnd(n);
    }

    else{
      if (list.size == capacity){
        list.head.next.next.prev = list.head;
        list.head.next = list.head.next.next;
        list.add(value);
        elements.put(key, n);
      }
      else{
        list.add(value);
        elements.put(key, n);
      }
  }

  public void moveToEnd(Node n){
    n.prev.next = n.next;
    n.next = tail;
    n.prev = tail.prev;
    list.tail.prev.next = n;
    list.tail.prev = n;
  }
}
