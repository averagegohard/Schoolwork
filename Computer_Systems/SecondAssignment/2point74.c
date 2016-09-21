#include<stdio.h>
#include<limits.h>
/*Determine whether arguments can be subtracted without overflow*/
int tsub_ok(int x, int y){
  //should return 1 if computation x-y does NOT overflow
  // edit y via twos complement in order to add its negative value successfully
  int edited_y = (~y)+1;
  // record the answer to the subtraction
  int answer = x + edited_y;
  // value to shift to extract the most significant bit
  int shift = (sizeof(int) << 3)-1;
  // shift the values right to have the msb repeated throughout the number
  // msb_x, msb_y, and msb_answer are either equal to 0x00000000 if the number
  // is positive or 0xFFFFFFFF if the number is negative
  int msb_x = (x >> shift);
  int msb_y = (((~y)+1) >> shift);
  int msb_answer = answer >> shift;
  // return whether msb_x or msb_y are equal to msb_answer, indicating that
  // the subtraction will not cause an overflow
  // otherwise what that means is that x and y are both either positive or 
  // negative while the answer is the opposite sign of x and y, which is not
  // possible mathematically, and thus indicates an overflow error
  return (msb_x == msb_answer) || (msb_y == msb_answer);
}

main(){
  printf("%d\n", tsub_ok(0,1));
  printf("%d\n", tsub_ok(INT_MIN, 0));
  printf("%d\n", tsub_ok(INT_MIN, 1));
}
