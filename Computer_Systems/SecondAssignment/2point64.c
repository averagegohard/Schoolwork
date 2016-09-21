#include<stdio.h>
/* Return 1 when any odd bit of x equals 1; 0 otherwise., Assume .w=32 */
int any_odd_one(unsigned x){
  // 0xAAAAAAAA has all of the odd bits with 1 and all of the even bits with
  // 0s. This makes it possible to determine if any of the odd bits
  // are equal to 1 through use of a boolean and to isolate the odd 1s
  // and a boolean or to restrict output to 1 and 0
  unsigned odds = 0xAAAAAAAA;
  return (x&odds)||0;
}
void main(){
  printf("Should return 10:\n%d%d\n", any_odd_one(0xFF), any_odd_one(0x0));
}
