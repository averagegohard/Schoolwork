import java.util.Scanner;
public class HelloWorld{
  public static void main(String[]args){
    System.out.println("Hello World!");
    Scanner keyboard = new Scanner(System.in);
    String name = keyboard.nextLine();
    int age = keyboard.nextInt();
    System.out.println("Your name is : " + name);
    System.out.println("Your age is : " + age); 
  }
}