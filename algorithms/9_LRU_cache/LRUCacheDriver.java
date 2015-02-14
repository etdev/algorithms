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
    LRUCache l = new LRUCache(3);
    l.set(1,1);
    l.printMap(); 
    l.set(1,1);
    l.printMap(); 
    l.set(1,1);
    l.printMap(); 
    l.set(2,2);
    l.printMap(); 
    l.set(3,3);
    l.printMap(); 
    l.set(4,4);
    l.printMap(); 
    System.out.println("dll: " + l.dll);
    l.get(1);
    l.printMap(); 
    System.out.println("dll: " + l.dll);
    l.set(1, 50);
    l.printMap(); 
    System.out.println("dll: " + l.dll);
    l.set(5, 51);
    l.printMap(); 
    System.out.println("dll: " + l.dll);
    l.get(1);
    l.printMap(); 
    System.out.println("dll: " + l.dll);
    l.get(2);
    l.printMap(); 
    System.out.println("dll: " + l.dll);
  }
}
