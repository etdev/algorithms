public class SolutionDriver {
  public static void main(String[] args) {
    //Make sure stack works
    Stack s = new Stack();
    s.push(1);
    s.push(2);
    s.push(3);
    System.out.println(s);
    int popped = s.pop();
    System.out.println(s);
    System.out.println("popped: " + popped);
    System.out.println("size: " + s.size);
  }
}
