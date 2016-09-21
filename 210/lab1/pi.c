/*********************************************
 * pi.c
 ********************************************/
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/* TODO 1 - fill in the function header for getNumberOfIterations */

// This function randomly generates points and counts number of points
// that fall into the circle
int getNumberOfPointsInCircle(int iter)
{
    int i, count = 0;
    float x, y, z;
    
    /* TODO 2 - fill in the for loop to count i from 0 to iter */
    {
	// Code below randomly generates X, Y points
	x = (float)rand()/RAND_MAX;
	y = (float)rand()/RAND_MAX;
	z = x*x+y*y;

	// count points that fall in circle
	if(z <= 1)
	{
	    count = count + 1;
	}
    }

    // return the count
    return count;
}

int main()
{
    int count, iter;
    float pi;
    
    srand(1234); //initializes random number generator

    iter = getNumberOfIterations(); // get number of iterations to run from input
    /* TODO 3 - call getNumberOfPointsInCircle and store it in count */
    
    pi = (float) count / iter * 4; // calculates pi
    printf("Estimate of pi is: %f\n", pi);
    
    return 0;
}

int getNumberOfIterations()
{
    int n;
    printf("Enter number of iterations to run: ");
    /* TODO 4 - get input into n using scanf */
    
    return n;
}
