public class LRUCacheDriver {
  public static void main(String[] args) {
    // Test DoublyLinkedList class
    //DoublyLinkedList dll = new DoublyLinkedList();
    //dll.add(0);
    //dll.add(1);
    //dll.add(2);
    //dll.add(3);
    //dll.add(4);
    //System.out.println(dll);
    //dll.refresh(dll.head.next);
    //System.out.println(dll);
    
   // Test LRUCache
   LRUCache l = new LRUCache(1); 
   l.set(2, 1);
   System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   System.out.println("l.get(2): " + l.get(2));
  }
}
