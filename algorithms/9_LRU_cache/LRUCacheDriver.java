public class LRUCacheDriver {
  public static void main(String[] args) {
    // Test DoublyLinkedList class
    DoublyLinkedList dll = new DoublyLinkedList();
    dll.add(0);
    dll.add(1);
    dll.add(2);
    System.out.println(dll);
    dll.remove(dll.head.next);
    System.out.println(dll);
  }
}
