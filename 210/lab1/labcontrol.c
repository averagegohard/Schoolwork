/*******************************************
 * labcontrol.c
 *********************************************/
#include <stdio.h>

int main()
{
    int x = 10; //initialize x with value 10

    printf("if-else experiment:\n");
    if(x > 11) //x will be compared to each statement
    {
	printf("x is greater than 11\n\n");
    }
    else if(x < 5)
    {
	printf("x is less than 5\n\n");
    }
    else
    {
	printf("x is somewhere between 5 and 11\n\n");
    }

    /* Optional Work - Change x's value above using scanf to control the output message, 
       recompile and execute your code to see the output */

    printf("\nfor loop experiment:\n");
    int i;
    for (i = 0; i < 10; i++) // This line means: 'for (initialization statement; test expression; update statement){ code to be executed }'
    {
	printf("i = %d\n", i); // prints from 0, 1, 2, ... to 9
    }
    /* Optional Work - Change i to start from 2 or change update statement 'i++' to 'i+=2',
       recompile and see how the output changes */

    printf("\nwhile loop experiment:\n");
    int j = 0;
    while(j < 10) // This line means: 'while( test expression ) { code to be executed }'
    {
	printf("j = %d\n", j); // prints from 0 to 9
	j = j + 1; //increments j by 1 else it will loop forever
    }
    
    return 0;
}
