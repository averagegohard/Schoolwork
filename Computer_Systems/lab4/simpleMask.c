/*********************
 * simpleMask.c
 *
 * masking exercise
 * 
 * Given x = 0x12341234, byteNum = 2
 * ans = 0x12001234
 *******************/
#include<stdio.h>

int main()
{
    int x = 0x12341234; 
    int byteNum;
    
    printf("x = 0x%x\n", x);
    printf("Enter a byte number [0 - 3] to mask out: ");

    //gets byte number from input
    scanf("%d", &byteNum);

    //checks if byteNum is within range
    if(byteNum >=0 && byteNum < 4)
    {
	/************************************************
	 * READ HERE!!
	 * Legal ops: ! ~ & ^ | + << >> 
         * Max constant: 0xFF or 255
	 ************************************************/
      int ans = (~(0xFF<<(byteNum<<3)))&x;// <-- Your final expression here
	
	printf("Masked out x = 0x%x\n", ans);
    }
    else
    {
	printf("Byte number %d is out of range, exiting ...\n", byteNum);
    }

    return 0;
}
