

//public interface Soda {
// public double getNumCalories();
// public boolean hasCaffeine();
//}



public interface Soda extends Comparable<Soda>, Packaging{
 public double getNumCalories();
 public boolean hasCaffeine();
}