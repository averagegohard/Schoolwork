/****************************************
 * bomb_main.c
 *
 * Thanks to Zhuoqun (Tom) Cheng
 *****************************************/
#include <stdio.h>
#include <stdlib.h>

/* bomb is built by `gcc -o bomb bomb.c bomb_main.c`
 * all these functions are defined in bomb.c, which will
 * be released after Tuesday */

int
main()
{
	char *input;

	printf("Phase 1: ");
	/* get input */
	input = read_line();
	phase1(input);
	printf("Phase 1 Passed!\n");

	printf("Phase 2: ");
	/* get input */
	input = read_line();
	phase2(input);
	printf("Phase 2 Passed!\n");
	printf("Bomb Defused!\n");

	return 0;
}

