import java.util.*;

public class LRUCache {

    DoublyLinkedList dll;
    int capacity;
    int filled;
    HashMap<Integer, DoublyLinkedList.Node> map;

    public LRUCache(int capacity) {
      this.capacity = capacity;
      this.filled = 0;
      dll = new DoublyLinkedList();
    }

    public int get(int key) {
      
    }

    public void set(int key, int value) {

    }
}
