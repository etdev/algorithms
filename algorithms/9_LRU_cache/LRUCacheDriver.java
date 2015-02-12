public class LRUCacheDriver {
  public static void main(String[] args) {
    LRUCache lru = new LRUCache(5);
    lru.set(0, 0);
    lru.set(1, 1);
    System.out.println(lru);
    lru.set(2, 2);
    System.out.println(lru);
    lru.set(3, 3);
    System.out.println(lru);
    lru.set(4, 4);
    System.out.println(lru);
    lru.set(5, 5);
    System.out.println(lru);
    lru.set(6, 6);
    System.out.println(lru);
    lru.get(1);
    System.out.println(lru);
  }
}

