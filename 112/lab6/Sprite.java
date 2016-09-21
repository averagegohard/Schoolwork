
public class Sprite implements Soda, Packaging {
 
 private double numCalories;
 

 public double getNumCalories(){
   return numCalories;
 }
 
 public boolean hasCaffeine(){
   return false;
 }

 public String getPackaging()
 {
   return "Sprite";
 }
 

 public int compareTo(Soda S) {
   return Double.compare(this.getNumCalories(),S.getNumCalories());
 }
 
    Sprite()
     {
      numCalories = 0;
     }

    Sprite(double aNumCalories)
     {
      numCalories = aNumCalories;
     }

    
    
 
}