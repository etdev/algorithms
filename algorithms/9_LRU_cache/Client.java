public class Client{
  public static void main(String[] args){
    LRUCache test = new LRUCache(3);
    //Set
    System.out.println("Capacity: " + test.capacity);
    test.set(1, 1);
    test.set(2, 2);
    test.set(3, 3);
    System.out.println("Test: " + test.toString());
    test.set(4, 4);
    System.out.println("Now going above capacity (should replace 1 with 4): " + test.toString());
    test.set(4, 70);
    System.out.println("Test that changing val only works as expected: " + test.toString());
    test.set(5, 5);
    test.set(6, 6);
    System.out.println("Test that refreshing works (1): " + test.toString());
    test.set(4, 71);
    System.out.println("Test that refreshing works (2): " + test.toString());
    //Get
    System.out.println("get(4): " + test.get(4));
    System.out.println("Test: " + test.toString());

    //More
    LRUCache test2 = new LRUCache(2);
    test2.set(2, 1);
    System.out.println("test2:" + test2.toString());
    test2.set(2, 2);
    System.out.println("test2:" + test2.toString());
    System.out.println("get(2): " + test2.get(2));

    //For large number of inputs
    LRUCache test3 = new LRUCache(10000);
    for(int i=0; i<15000; i++){
      test3.set(i, i);
      if (i%2 == 0){ test3.get(i/2); }
    }
    System.out.println("Test3: " +test3.toString());

  }
}
