#include <stdio.h>
#include <stdlib.h>

typedef enum
{
    Earth,
    Mars,
    Saturn,
    Pluto
} op; 

void switch_one(op type)
{
    switch(type)
    {
    case Earth:
	printf("Earth\n");
	break;
    case Mars:
	printf("Mars\n");
	break;
    case Saturn:
	printf("Saturn\n");
	break;
    case Pluto:
	printf("Pluto\n");
	break;
    default:
	break;
    }
}

void switch_two(char in)
{
    switch(in)
    {
    case 'a':
	printf("Earth\n");
	break;
    case 'b':
	printf("Mars\n");
	break;
    case 'c':
	printf("Saturn\n");
    default:
	printf("No switch for %c\n", in);
	break;
    }
}

int main()
{
    switch_one(Earth);
    switch_two('a');
    return 0;
}
