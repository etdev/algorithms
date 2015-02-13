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
      // If map contains that key, refresh that node and return its value
      if (map.containsKey(key)) {
        return map.get(key).val;
      }
      // Else, return -1
      else { return -1; }
    }

    public void set(int key, int value) {
      // If map contains that key, refresh the corresponding node and set its value to the provided value
      if (map.containsKey(key)) {
        DoublyLinkedList.Node n = map.get(key);
        n.val = value;
        dll.refresh(n);
      }
      // Else
      else {
        // If map isn't full
          if (filled != capacity) {
          // Add the new value
            dll.add(value);
            filled++;
          }
        // If map is full
        //   Delete the oldest entry and add the new value
            dll.remove(dll.head.next);
            dll.add(value);
      }
    }
}
