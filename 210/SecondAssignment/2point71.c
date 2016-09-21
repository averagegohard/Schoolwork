#include<stdio.h>
/* Declaration of data type where 4 bytes are packed
   into an unsigned */
typedef unsigned packed_t;

/* Extract byte from word. Return as signed integer */
int xbyte(packed_t word, int bytenum)
{
  // failed attempt at xbyte because there was no sign extraction
  // return (word>> (bytenum << 3)) & 0xFF;

  // instead of shifting right and then using 0xFF to isolate the bits,
  // this version shifts the word right until the desired byte is in the 
  // most significant byte. Then, we shift it back to the first byte and
  // return the total value. By right shifting after bringing the byte to
  // the location of the most significant byte, we ensure that the most
  // significant bit of the byte we want is copied throughout all the bits
  // except for the bits in the least significant byte, thus ensuring that 
  // the sign is maintained, and the correct value is returned
  int desired_byte_is_msb = (word << ((3-bytenum)<<3));
  return desired_byte_is_msb >> 24;
  // bytenum = [0,1,2,3]
  // word = 32  bit packed word
  
}
main(){
  packed_t test= 0xabcdef34;
  int index = 1;
  printf("0x%x\n", xbyte(test,index));
  printf("0x%x\n", test);
  printf("%d\n", xbyte(test,index)); 
}
