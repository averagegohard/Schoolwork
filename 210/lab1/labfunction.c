/**********************************
 * labfunction.c
 ***********************************/
#include <stdio.h>

void func1(int val); //func1's function header is declared here

/* or you can declare the entire function (header+body) above main */
void func2(int val, float fval)
{
    printf("func2's val is %d and fval is %f\n\n", val, fval);
}

/* functions can also return variables explicitly */
int returnSomething()
{
    printf("returnSomething has no val :(, but I can return one!\n\n");
    return 12;
}

int main()
{
    // calling the functions
    func1(10);
    func2(11, 0.5);
    
    printf("returnSomething's return val: %d\n\n", returnSomething()); //returnSomething gets called by printf when trying to resolve printf's output
    return 0;
}

void func1(int val) //func1's function body is actually here
{
    printf("func1's val is %d\n\n", val);
}
