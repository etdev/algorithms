import java.util.*;
public class Client
{
   public static void main(String[] args)
   {
      Bag<Double> numbers = new Bag<Double>();
      System.out.println("Size: " + numbers.size() + ", numbers: " + numbers.toString());
      numbers.add(50.0);
      numbers.add(12.0);
      numbers.add(-6.0);
      System.out.println("Size: " + numbers.size() + ", numbers: " + numbers.toString());
      int N = numbers.size();
      System.out.println("N: " + N);
      double sum = 0.0;
      for (double x : numbers)
         sum += x;
         System.out.println("x: " + x);
      double mean = sum/N;
      sum = 0.0;
      for (double x : numbers)
         sum += (x - mean)*(x - mean);
      double std = Math.sqrt(sum/(N-1));
      System.out.printf("Mean: %.2f\n", mean);
      System.out.printf("Std dev: %.2f\n", std);
  }
}
