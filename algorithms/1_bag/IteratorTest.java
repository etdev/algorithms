import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class IteratorTest{

  public static void main(String args[]){

    ArrayList<String> collection = new ArrayList<String>();
    collection.add("aaa");
    collection.add("bbb");
    collection.add("ccc");

    Iterator<String> i = collection.iterator();

    while (i.hasNext()){
      String s = i.next();
      System.out.println(s);
    }
  }

  //Now I'll make my own iterator
  public class MyCollection<String> implements Iterable<String>{

    public void main(String[] args){


    }

    public Iterator<String> iterator() {
      return new MyIterator<String>();
    }
  }

  public class MyIterator<String> implements Iterator<String> {


    public MyIterator<String>(){

      this.strings = ["a", "b", "c", "d", "e"];

    }

    public boolean hasNext() {

    }

    public String next() {

    }

    public void remove() {

    }
  }
}
