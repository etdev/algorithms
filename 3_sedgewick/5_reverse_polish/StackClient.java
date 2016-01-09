public class StackClient{

  public static void main(String[] args){
    Stack s = new Stack();
    System.out.println("Insert 'aaa, bbb, ccc, ddd, eee'");
    s.push("aaa");
    s.push("bbb");
    s.push("ccc");
    s.push("ddd");
    s.push("eee");
    System.out.println("  s: " + s.toString());
    System.out.println("Pop");
    s.pop();
    System.out.println("  s: " + s.toString());
    System.out.println("Pop");
    s.pop();
    System.out.println("  s: " + s.toString());
    System.out.println("Pop");
    s.pop();
    System.out.println("  s: " + s.toString());
    System.out.println("  s.size: " + s.size + ", s.elements.length: " + s.elements.length);
    System.out.println("Pop");
    String popped = s.pop();
    System.out.println("  s: " + s.toString() + " popped: " + popped);
    System.out.println("  s.size: " + s.size + ", s.elements.length: " + s.elements.length);
    System.out.println("Pop");
    popped = s.pop();
    System.out.println("  s: " + s.toString() + " popped: " + popped);
    System.out.println("  s.size: " + s.size + ", s.elements.length: " + s.elements.length);
    System.out.println("Pop");
    popped = s.pop();
    System.out.println("  s: " + s.toString() + " popped: " + popped);
    System.out.println("  s.size: " + s.size + ", s.elements.length: " + s.elements.length);
  }
}
