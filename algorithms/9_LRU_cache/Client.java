public class Client{
  public static void main(String[] args){
    LRUCache test = new LRUCache(3);
    test.set(1, 1);
    test.set(2, 2);
    test.set(3, 3);
    System.out.println("Test: " + test.toString());
  }
}
