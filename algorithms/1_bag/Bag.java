import java.util.Iterator;
public class Bag<Item> implements Iterable<Item>{

  private Item[] items = (Item[]) new Object[1];
  private int size = 0;

  public Bag(){
  }

  public void add(Item item){
    if (size == items.length){ resize(size*2); }
    items[size] = item;
    size++;
  }

  public boolean isEmpty(){
    return size == 0;
  }

  public int size(){
    return size;
  }

  public Iterator<Item> iterator(){
    return new MyIterator();
  }

  private class MyIterator implements Iterator<Item> {
    private int i = size;
    public boolean hasNext() { return i<size; }
    public Item next(){ return items[--i]; }
    public void remove() { } //Should actually throw error here
  }

  private void resize(int newSize){
    Item[] tempItems = (Item[]) new Object[newSize];
    for(int i=0; i<size; i++){
      tempItems[i] = items[i];
    }
    items = tempItems;
  }
}
