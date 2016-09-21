#include<stdio.h>
int A(int x){
  // returns 1 if any byte is equal to one using a logical or to retrict
  // output to 0 or 1
  // otherwise it returns 0
  return x||0;
}
int B(int x){
  // returns 1 if any byte is equal to zero by using a boolean not on
  // the original integer and then a logical or to restrict output to 0 or 11
  // otherwise it returns 0
  return (~x)||0;
}
int C(int x){
  // returns 1 if the least significant byte has a 1 in any bits by performing
  // a boolean and on all the bits and with 0xFF, which would set all of the
  // non lsb bits to 0 so it won't affect the results
  // use of a logical or in order to restrict output to 0 or 1
  return (x&(0xFF))||0;
}
int D(int x){
  // copied from get_msb from textbook and modified to answer the question
  /* Shift by w-8 */
  int shift_val = (sizeof(int)-1)<<3;
  /* Arithmetic shift */
  int xright = x >> shift_val;
  /* Zero all but LSB */
  // xright&0xFF is the MSB
  // in order to return a 1 when any bit in the most significant byte is zero,
  // it is necessary to use a boolean not on xright before the boolean and
  // in order to get the correct results
  // use of logical or in order to restrict output to 0 or 1
  return ((~xright) & 0xFF)||0;
}
void main(){
  // TODO recheck test cases
  int a_one = 300; //0x12C
  int a_zero = 0; //0x0
  int b_one = 3242; //0xCAA
  int b_zero = -1;
  int c_one = 3224253; //0x3132BD
  int c_zero = 0xf32e2f00;
  int d_one = 995310; //0xF2FEE
  int d_zero = -1;
  printf("If all the methods are correct, the function should print 10 on four lines\n");
  printf("%d%d\n%d%d\n%d%d\n%d%d\n", A(a_one),A(a_zero),B(b_one),B(b_zero),C(c_one),C(c_zero),D(d_one),D(d_zero));
}

