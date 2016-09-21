#include <stdio.h>
#include <stdlib.h>

struct _listNode {
    int id;
    struct _listNode *next;
};

struct _listNode *node3;
struct _listNode *node2;
struct _listNode *node1;

void setup()
{
    //initialize list elements
    node1 = (struct _listNode *) malloc (sizeof(struct _listNode));
    node2 = (struct _listNode *) malloc (sizeof(struct _listNode));
    node3 = (struct _listNode *) malloc (sizeof(struct _listNode));

    //set up list
    node1->id = 1;
    node1->next = node2;

    node2->id = 2;
    node2->next = node3;

    node3->id = 3;
    node3->next = NULL;
}

int main()
{
    setup();
    
    //traverse linked list
    struct _listNode *iter = node1;
    while(iter != NULL)
    {
	printf("id = %d\n", iter->id);
	iter = iter->next;
    }

    return 0;
}
