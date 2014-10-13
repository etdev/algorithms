import java.util.HashMap;

public class LRUCache {

  HashMap<Integer, Coord> elements;
  int capacity;

  public LRUCache(int capacity) {
    elements = new HashMap<Integer, Coord>();
    this.capacity = capacity;
  }

  /* Get the value (always positive) of the key if it exists, otherwise return -1*/
  public int get(int key) {
    if (contains(key)){
      Coord current = elements.get(key);
      current.count = 0;
      return current.val;
    }
    else{ return -1; }
  }

  /* Set or insert the value if the key is not already present; when the cache reaches its capacity, it should invalidate the LRU item before inserting a new item */
  public void set(int key, int value) {
    if (contains(key)){
      //Update the key and set its count to 0, increment others
      elements.get(key).val = value;
      incrementAll();
      elements.get(key).count = 0;
    }
    else{
      if (isFull()) {
        //Delete the key with the highest count, and replace it with the new element, count 0 and increment the others)
        Integer max = maxKey();
        elements.get(max).val = value;
        incrementAll();
        elements.get(max).count = 0;
      }
      else{
        Coord cVal = new Coord(value);
         //Add the key with count 0 and increment all other counts
        incrementAll();
        elements.put(key, cVal);
      }
    }
  }

  public class Coord{
    int val;
    int count;

    public Coord(int val){
      this.val = val;
      this.count = 0;
    }

    public void increment(){
      this.count++;
    }
  }

  public boolean isFull(){
    return (elements.size() == capacity);
  }

  public boolean contains(int key){
    return ( elements.containsKey(key) && elements.get(key).count < this.capacity) ;
  }

  public String toString(){
    String result = "[";
    for (Integer i: elements.keySet()){
      Coord current = elements.get(i);
      result += (i.toString() + "/" + current.val + "(" + current.count + ")   ");
    }
    return result.trim() + "]" + "{" + elements.size() + "}";
  }

  public void incrementAll(){
    for (Integer i: elements.keySet()){
      Coord current = elements.get(i);
      current.increment();
    }
  }

  public Integer maxKey(){
      Integer max = new Integer(-1);
      Integer maxKey = new Integer(-1);
    for (Integer i: elements.keySet()){
      Coord current = elements.get(i);
      if (current.count > max){ max = current.count; maxKey = i; }
    }
    return maxKey;
  }

}

