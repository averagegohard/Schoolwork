public class Lab3{
  public static void doubleArray(int a[]){
    int i=0;
    while(i<a.length){
      a[i]=a[i]*2;
      i++;
    }
  }
  public static void zeroNegatives(int a[]){
    for(int i=0; i<a.length; i++){
      if(a[i]<0){
       a[i]=0;
      }
    }
  }
  public static void reverseOriginalArray(int a[]){
    int intermediate;
    
    if(a.length%2==0){
      for(int i=0; i<=a.length/2; i++){
        intermediate=a[i];
        a[i]=a[a.length-1-i];
        a[a.length-1-i]=intermediate;
      }
    }
    else{
      for(int i=0; i<a.length/2; i++){
        intermediate=a[i];
        a[i]=a[a.length-1-i];
        a[a.length-1-i]=intermediate;
      }      
    }
 }
//  public static int[] reverseArray(const int a[]){
//    
//  }
//  public static int[] fibonacciArray(int n){
//    
//  }
  public static void main(String[] args){
    int[] a={-2,3,-6,7,8};
    doubleArray(a);
    System.out.println(a[0]+" "+a[1]);
    zeroNegatives(a);
    System.out.println(a[0]+" "+a[1]);
    reverseOriginalArray(a);
    System.out.println(a[0]+" "+a[1]);
  }
}
