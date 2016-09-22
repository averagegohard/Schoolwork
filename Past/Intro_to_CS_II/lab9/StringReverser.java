/**
 * StringReverser.java
 * Author: Hanwen Wu (hwwu@bu.edu)
 * Date: Nov 2015
 *
 * For CS112 Lab 9, Using Stack
 * 
 */

import java.util.Stack;

public class StringReverser {

 public static String reverse(String input) {
  Stack<Character> stack = new Stack<Character>();

  // TODO implement the function using a stack
  
  return "";
 }

 public static void test(String input, String expected) {
  System.out.println("Testing input: " + input);
  System.out.println("Should be: " + expected);
  System.out.println("Got: " + reverse(input));
  System.out.println();
 }

 public static void main(String[] args) {
  test("Hello", "olleH");
  test("World", "dlroW");
 }

}