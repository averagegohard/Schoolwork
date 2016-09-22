/**********************************
 * selection_sort.c
 *
 * Implements selection sort of 
 * 5 element integer array
 *********************************/
#include <stdio.h>

// prints array with given size
void printArray(int *array, int size)
{
    int i;
    for(i = 0; i < size; i ++)
    {
      printf("%d ",array[i]);
    }
    printf("\n");
}

//swaps values of two pointers
void swap(int *my_val, int *other_val)
{
  int temp = *my_val;
  *my_val = *other_val;
  *other_val = temp;
  
}

int main()
{
    int size, i, j, temp;
 
    //array of integers of size 5
    int array[5] = {-2, 5, 0, 2, 7};
    size = 5;
    
    //print array out
    printf("Before sorting: ");
    printArray(array, size);
    
    //loop through each element
    for (i = 0; i < size-1; i++)
    {
	//save i into temp
	temp = i;
	
        // loop from next element of i till size
	for(j = i+1; j < size; j++)
	{
	    //compare array[temp] with array[j] and save 
	    //index with min value
	    if(array[j] < array[temp])
	    {
		//temp now holds index with min value
		temp = j;
	    }
	}
	
	//swap value of array[i] with index with min value
	swap(&array[i], &array[temp]);
    }
    
    //print array out
    printf("After sorting: ");
    printArray(array, size);
    
    return 0;
}
