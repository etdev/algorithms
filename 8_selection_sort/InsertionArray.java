import java.util.*;

public class InsertionArray{

  //Basic implementation using an array I wanted to code first to get the basic idea down.
  public static void main(String[] args){
    int[] arr = {1, 3, -5, 2, 0};
    insertionSort(arr);
    int[] arr2 = {3, 1};
    insertionSort(arr2);
    int[] arr3 = {};
    insertionSort(arr2);
    System.out.println(Arrays.toString(arr));
    System.out.println(Arrays.toString(arr2));
    System.out.println(Arrays.toString(arr3));
  }

  public static void insertionSort(int[] arr){

    for (int i=1; i<arr.length; i++){
      for( int j=i; j>0; j--){
        if (arr[j] < arr[j-1]){ swap(arr, j-1, j); }
      }
    }
  }

  public static void swap(int[] arr, int lo, int hi){
    int temp = arr[lo];
    arr[lo] = arr[hi];
    arr[hi] = temp;
  }
}
