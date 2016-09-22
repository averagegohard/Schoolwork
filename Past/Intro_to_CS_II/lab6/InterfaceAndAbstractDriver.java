
public class InterfaceAndAbstractDriver {

 public static void main(String[] args) {
  // TODO Auto-generated method stub

 
  FantaOrange FO1 = new FantaOrange();
  
  Soda S1 = new FantaOrange();
  Soda S2 = new Sprite();
//  Soda S3 = new Soda();  //this won't work, since Soda is an interface.
  
//  Packaging P = new FantaOrange();
//  Soda P2 = new FantaOrange();
  
  
  Soda [] A = new Soda[10]; 
    
  A[0] = S1;  //can simply reassign anything that implements Soda to something else that implements Soda.
  A[1] = S2;
  A[2] = new Sprite(1.0);  //alternatively we can place a new instance of a Soda in an array.
  A[3] = new Sprite(52.0);
  A[4]= new FantaOrange(55.0);
  A[5] = new Sprite(888.0);
  A[6] = new FantaOrange(2.2);
  A[7] = new Sprite(3.0); 
  A[8] = new Sprite(50.0);
  A[9]= new FantaOrange(56.0);

  
//  int numSodasWCaffeine = 0; 
//  for(int i=0;i<2;i++){
//   if (A[i].hasCaffeine())
//    numSodasWCaffeine++; 
//  }
  
   
//  System.out.println("The number of soda's with caffeine are " + numSodasWCaffeine);
  
  
     int N = A.length;
  //Bubble Sort on objects
     //  Write code here
       
  for(int i=N-1; i>0; i--){
    for(int j=0; j<N-1; j++){
      if(A[j].compareTo(A[j+1])<0){
        Soda temp=A[j];
        A[j]=A[j+1];
        A[j+1]=temp;
      }
    }
  }
  
  for(int test=0; test<A.length; test++){
    System.out.println(A[test].getNumCalories()+"\t"+A[test].getPackaging()+"\t"+(test+1));
  } 
     
     
     
     
  
  
 }

}