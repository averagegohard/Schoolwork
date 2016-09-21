import java.util.Scanner;
public class CashRegisterDriver{
  public static void main(String[]args){
    Scanner in = new Scanner(System.in);
    System.out.println("Do you want to purchase a 'Jacket', 'Designer Jeans', or a 'Shirt'?");
    String description=in.nextLine();
    System.out.println("How many items do you want to purchase?");
    int quantity=in.nextInt();
    in.close();
    RetailItem item=new RetailItem();
    if(description.equals("Jacket")){
      item.setDescription(description);
      item.setPrice(59.95);
    }
    else if(description.equals("Designer Jeans")){
      item.setDescription(description);
      item.setPrice(34.95);
    }
    else if(description.equals("Shirt")){
      item.setDescription(description);
      item.setPrice(24.95);
    }
    else{
      System.out.println("Error! Please make your input 'Jacket', 'Designer Jeans', or 'Shirt'");
    }
    CashRegister thing=new CashRegister(item, quantity);
    System.out.println("Subtotal: "+thing.getSubtotal());
    System.out.println("Sales Tax: "+thing.getTax());
    System.out.println("Total: "+thing.getTotal());
  }
}