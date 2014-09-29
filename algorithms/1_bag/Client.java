public class Client
{
   public static void main(String[] args)
   {
      Bag<Double> numbers = new Bag<Double>();
      numbers.add(50.0);
      numbers.add(12.0);
      numbers.add(-6.0);
      int N = numbers.size();
      double sum = 0.0;
      for (double x : numbers)
         sum += x;
      double mean = sum/N;
      sum = 0.0;
      for (double x : numbers)
         sum += (x - mean)*(x - mean);
      double std = Math.sqrt(sum/(N-1));
      System.out.printf("Mean: %.2f\n", mean);
      System.out.printf("Std dev: %.2f\n", std);
  }
}
