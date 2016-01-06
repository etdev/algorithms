public class Client{
  public static void main(String[] args){
   System.out.println("[1, 2, -5, 4, 6]");
   int[] arr = {1, 2, -5, 4, 6};
   System.out.println("Result: " + Solution.maxSum(arr));

   System.out.println("[1, 2]");
   int[] arr2 = {1, 2};
   System.out.println("Result: " + Solution.maxSum(arr2));

   System.out.println("[-1, -50, -23]");
   int[] arr3 = {-1, -50, -23};
   System.out.println("Result: " + Solution.maxSum(arr3));
  }
}
