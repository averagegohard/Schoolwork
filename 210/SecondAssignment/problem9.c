#include <stdio.h>
main()
{
  char n[4];
  int x;
  printf("Enter a 3-digit non-negative number: ");
  scanf("%s", n);
  // the next line of code was created by me in order to
  // perform conversion from ASCII bit representation to magnitude-only
  // bit representation
  // the ASCII value for 0 is 48, for 1 is 49, and so on
  // thus taking the ASCII value of each character inputted and subtracting
  // 48 would return the actual integer value
  // the integer digits are then multiplied by powers of 10 and added together
  // in order to represent the value correctly
  x = 100*(n[0]-48) + 10*(n[1]-48) + (n[2]-48);
  printf("The number is %i \n", x);
}
