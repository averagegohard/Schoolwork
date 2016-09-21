public class RetailItemDriver{
  public static void main(String[]args){
    RetailItem Item1= new RetailItem("Jacket", 12, 59.95);
    RetailItem Item2= new RetailItem("Designer Jeans", 40, 34.95);
    RetailItem Item3= new RetailItem("Shirt", 20, 24.95);
    System.out.println("Item 1: "+Item1.getDescription()+"\tUnits on hand: "+Item1.getUnitsOnHand()+"\tPrice: "+Item1.getPrice());
    System.out.println("Item 2: "+Item2.getDescription()+"\tUnits on hand: "+Item2.getUnitsOnHand()+"\tPrice: "+Item2.getPrice());
    System.out.println("Item 3: "+Item3.getDescription()+"\tUnits on hand: "+Item3.getUnitsOnHand()+"\tPrice: "+Item3.getPrice());
  }
}