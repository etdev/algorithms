import java.util.HashMap;

public class LRUCache {

  HashMap<Integer, Coord> elements;
  int capacity;

  public LRUCache(int capacity) {
    elements = new HashMap<Integer, Coord>();
    capacity = capacity;
  }

  /* Get the value (always positive) of the key if it exists, otherwise return -1*/
  public int get(int key) {

  }

  /* Set or insert the value if the key is not already present; when the cache reaches its capacity, it should invalidate the LRU item before inserting a new item */
  public void set(int key, int value) {
    Coord cVal = new Coord(value, 0);
    if (contains(key)){
      //Update the key and set its count to 0, increment others
      elements.get(key) = cVal;
      incrementAll();
    }
    else{
      if (isFull()) {
        //Delete the key with the highest count, and replace it with the new element, count 0 and increment the others)
        Integer max = elements.get(maxKey());
        elements.remove(max);
        elements.put(key, cVal);
        incrementAll();
      }
      else{
         //Add the key with count 0 and increment all other counts
        elements.put(key, cVal);
        incrementAll();
      }
    }
  }

  public class Coord{
    int val;
    int count;

    public Coord(int val){
      val = val;
      count = 0;
    }

    public void increment(){
      count++;
    }
  }

  public boolean isFull(){
    return (elements.size() == 0);
  }

  public boolean contains(int key){
    return elements.containsKey(key);
  }

  public String toString(){
    String result = "[";
    for (Integer i: elements.keySet()){
      Coord current = elements.get(i);
      String += (i.toString + "/" + current.val+ "(" + current.count + ")");
    }
    return result += "]";
  }

  public void incrementAll(){
    for (Integer i: elements.keySet()){
      Coord current = elements.get(i);
      if (current.count != 0){ current.increment(); }
    }
  }

  public int maxKey(){
    for (Integer i: elements.keySet()){
      int max = -1;
      int maxKey = -1;
      Coord current = elements.get(i);
      if (current.count > max){ max = current.count; maxKey = i; }
    }
    return maxKey;
  }

}





















