//Keyan Vakil    keyanv@bu.edu
import java.util.Scanner;
public class Lab2Pro1{
  public static void main(String[]args){
    //initialization of necessary variables and Scanner
    Scanner in=new Scanner(System.in);
    final int NUMBER_OF_USERS=10;
    int a[] = new int[NUMBER_OF_USERS];
    int sum=0;
    int min=0;
    int max=0;
    int prod=1;
    int count=0;
    //prompt and record user input
    System.out.println("Enter "+NUMBER_OF_USERS+" integers:");
    for(int i=0;i<NUMBER_OF_USERS;i++){
      a[i]=in.nextInt();
      sum=a[i]+sum;      
    }
    in.close();
    //print out all values of the array
    System.out.println("Array: ");
    for(int i=0;i<NUMBER_OF_USERS;i++){
      System.out.print(a[i]+" ");   
    }
    
    //finding the minimum value in the array
    for(int i=0;i<NUMBER_OF_USERS;i++){
      if(a[i]<=a[i+1]&&i!=9){
        min=a[i];
      }
    }
    //after going through all of the values in the array, and if the last one is 
    //less than the minimum value then the last value must be the minimum
    if(a[9]<min){
      min=a[9];
    }
    
//    if(min>a[NUMBER_OF_USERS-1]){
//      min=a[NUMBER_OF_USERS-1];
//    }
    
//    //finding the maximum value in the array
//    for(int i=0;i<NUMBER_OF_USERS-1;i++){
//      if(a[i+1]>a[i]){
//        max=a[i+1];
//      }
//    }
//    
//    //after going through all of the values in the array, and if the last one is 
//    //less than the minimum value then the last value must be the minimum
//    if(max<a[NUMBER_OF_USERS-1]){
//      max=a[NUMBER_OF_USERS-1];
//    }
    
    //finding the product
    for(int i=0;i<NUMBER_OF_USERS;i++){
      prod=prod*a[i];
    }
                                      
    //output
    System.out.println("\nSum of elements in array: " + sum);
    System.out.println("Minimum value: " + min);
    System.out.println("Maximum value: " + max);
    System.out.println("Multiplication of elements of array " + prod);
    
    //Bonus
    //Go through array and see if remainder by dividing by 2 is 1 (would be an odd number)
    System.out.println("Odd numbers in the array");
    for(int i=0;i<NUMBER_OF_USERS;i++){
      if(a[i]%2==1){
        //if odd print the number and add to a count
        System.out.print(a[i]+" ");
        count++;
      }
    }
    //print the number of odd numbers
    System.out.println("Number of odd numbers in the array: "+count);
    
  }
}