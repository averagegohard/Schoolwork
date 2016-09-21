#include<stdio.h>
unsigned replace_byte(unsigned x, int i, unsigned char b){
  // initialize unsigned char as mask
  unsigned char mask = 0xFF;
  // edit the mask to correspond to spot where byte must be removed
  unsigned remove_var = ~(mask << (i<<3));
  printf("Remove_var: 0x%x\n", remove_var);
  // use a boolean and to remove the corresponding byte from original x
  unsigned new_x = x & remove_var;
  printf("New x (0x%x & 0x%x): 0x%x\n",x,remove_var, new_x);
  // return the result of a boolean or on the area with the new_x with the empty byte and the shifted byte to be added
  return new_x | (b << (i<<3));
}
void main(){
  unsigned word = 0x12345678;
  unsigned test1 = replace_byte(word, 2, 0xAB);
  unsigned test2 = replace_byte(word, 0, 0xAB);
  printf("Test 1 should be 0x12AB5678 and is:\n0x%x\n", test1);
  printf("Test 2 should be 0x123456AB and is \n0x%x\n", test2);
}



