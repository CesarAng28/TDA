//
//  memory_test.c
//  
//
//  Created by Cesar Angeles on 15/09/2020.
//
#include <stdlib.h>
#include "memory_test.h"



void inner_function(void)
 {
     malloc(4000);
 }

void in_function(void)
{
    malloc(2000);
    inner_function();
}

int main(void)
{
    int i;
    int* a[10];
    
    for (i = 0; i < 10; i++) {
        a[i] = malloc(1000);
        
    }

    in_function();

    inner_function();

    for (i = 0; i < 10; i++) {
        free(a[i]);
        
    }
    return 0;
    
}

