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
   //LRUCache l = new LRUCache(1); 
   //l.set(2, 1);
   //System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   //System.out.println("l.get(2): " + l.get(2));
  //}
  // 2,[set(2,1),set(2,2),get(2),set(1,1),set(4,1),get(2)], fails on l. 75
  LRUCache l = new LRUCache(1);
   System.out.println("l.set(2, 1)");
  l.set(2, 1);
   //System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   l.printMap();
   System.out.println("l.get(2)");
   l.get(2);
   //System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   l.printMap();
   System.out.println("l.set(3, 2)");
   l.set(3, 2);
   //System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   l.printMap();
   int test = l.get(2);
   System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   System.out.println("l.get(2): " + test);
   test = l.get(3);
   System.out.println("l: " + l + ", capacity: " + l.capacity + ", filled: " + l.filled);
   System.out.println("l.get(3): " + test);
   l.printMap();
  }
}
