public class FantaOrange implements Soda, Packaging {

 private double numCalories;
 
 public double getNumCalories(){
   return numCalories;
 }
 
 public void setNumCalories(double aNumCalories)
 {
   numCalories=aNumCalories;
  
 }
 public boolean hasCaffeine(){
   return false;
 }
 
 public String getPackaging()
 {
    return "Fanta Orange";
 }
 
 

    FantaOrange()
     {
      numCalories = 0;
     }

  FantaOrange(double aNumCalories)
    {
     numCalories = aNumCalories;
    }
 
 public int compareTo(Soda S) {
   return Double.compare(this.getNumCalories(),S.getNumCalories());
 }

}