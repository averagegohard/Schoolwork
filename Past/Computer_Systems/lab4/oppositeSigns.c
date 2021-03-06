/*********************
 * oppositeSigns.c
 *
 * a sign checking exercise, return 1 if the signs
 * for x and y are different, else return 0
 *
 * Given x = -5, y = 3
 * ans = 1
 *******************/
#include<stdio.h>

int main()
{
    int x = -5;
    int y = 3;
    
    /************************************************
     * READ HERE!!
     * Legal ops: ! ~ & ^ | + << >> 
     * Max constant: 0xFF or 255
     ************************************************/
    int shift = 31;
    int edit_x = x>>shift;
    int edit_y = y>>shift;
    int ans = (edit_x^edit_y)&1; // <-- Your final expression here
    printf("Sign checking = %d\n", ans);
    
    return 0;
}
