/**************************************************
 * file_name
 * your_name
 *
 * This is a block comment usually used
 * at the top of C programs to summarize this code
 * and for any copyright or authorship information
 **************************************************/
#include <stdio.h>

int main()
{
    /* Comment style 1 */
    char charArray[100]; /* creates a 100 element character array or a string */ 
    
    // comment style 2
    int x;  // creates a new variable called "x" that can hold a integer
    float y; // creates a new variable called "y" that can hold a float

    /******** Reading in ints and floats *********/
    printf("Enter x: ");
    scanf("%d", &x); // notice %d specifies input type integer and use of '&' for x, you will find out  more later when pointers are introduced
    
    printf("Enter y: ");
    scanf("%f", &y); // %f specifies input type float

    printf("x + y = %f\n", (x+y)); // output the summation as a float, notice the input is (x+y)



    /********** Reading in a string ************/
    printf("Learning C is? "); // comment style 2 - prints this question to the screen

    /* special null character '\0' added to end of every input using scanf */
    /* say input is "great!", then it resides in charArray as {'g', 'r', 'e', 'a', 't', '!', '\0'}, rest of characters in charArray is ignored by printf */
    scanf("%s", charArray); //%s specifies input type is string, charArray is where the input string will be stored

    // printf will know to print the contents of charArray using %s and charArray
    // '\n' represents a newline - mostly used for nice output formatting
    printf("Learning C is %s\n", charArray); 
    
    /*QUESTION - what happens if input string is greater than 100 characters? */


    
    return 0;
}
