/*********************
 * signExtend.c
 *
 * sign extension exercise
 * 
 * Assume you are given a 4 bit value
 * and you want to sign extend it.
 *******************/
#include<stdio.h>

int main()
{
    int x = 0xc;
    int n = 4;
    
    /************************************************
     * READ HERE!!
     *
     * Sign extend x such that it becomes 0xfffffffc
     * 
     * Legal ops: ! ~ & ^ | + << >>
     * Constant limits: 255 or 0xFF
     ************************************************/
    // 0xc == 1100
    int shift = (32-n);
    int ans = (x<<shift)>>shift;// <-- Your final expression here

    printf("Sign extended x = 0x%x\n", ans);
}
