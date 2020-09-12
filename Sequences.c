<<<<<<< HEAD
//
//  Sequences.c
//  
//
//  Created by Cesar Angeles on 07/09/2020.
//

#include <stdio.h>
#include <stdlib.h>

#define Sequences_IMPORT
#include "Sequences.h"



long long int Sequences_sfibo(long long int n){
    long long int sequence_1 = 0, sequence_2 = 1, temp = 0;
    int index = 0;
    
    for (index = 0; index < n; index ++){
        
        temp = sequence_2;
        sequence_2 = sequence_2 + sequence_1;
        sequence_1 = temp;
        
    }
    (n<=0) ? sequence_2 = 0 : (sequence_2 = sequence_1);
    
    return sequence_2;

}



long long int Sequences_rfibo(long long int n){
    
    if (n == 1){
        return 1;
    }
    if(n > 1){
        return Sequences_rfibo(n - 1) + Sequences_rfibo(n - 2);
    }else{
        return 0;
    }
    
}
||||||| f46ea0f
=======
//
//  Sequences.h
//  
//
//  Created by Cesar Angeles on 07/09/2020.
//

#ifndef Sequences_h
#define Sequences_h

#include <stdio.h>

#ifdef Sequences_IMPORT
    #define EXTERN
#else
    #define EXTERN extern
#endif


/* Sequences.h -- Function prototypes */

/**
 * Returns the value of the fibonacci sequence at index n calculated sequentially
 * @param
 *      n (long long int):
 *          Index of the fibonacci sequence
 * @return long long int value
*/

/*long long int Sequences_sfibo(long long int n) {
    int prev_number = 0, next_number = 1;
    n = prev_number;
    prev_number = next_number;
    next_number = next_number + n;
    return n;
}*/

long long int Sequences_sfibo(long long int n){
    long long int prev_number = 0, next_number = 1, fibonacci_number = 0;
    int index = 0;
    
    for (index = 0; index < n; index ++){
        fibonacci_number = prev_number;
        prev_number = next_number;
        next_number = next_number + fibonacci_number;
        return fibonacci_number;
    }
    
}


/**
 * Returns the value of the fibonacci sequence at index n calculated recursively
 * @param
 *      n (long long int):
 *          Index of the fibonacci sequence
 * @return long long int value
*/

/*long long int Sequences_rfibo(long long int n) {
    if(n == 0) {
        return 0;
    }
    else if(n == 1) {
        return 1;
    }
    else {
        return(recursive_fib(n - 1) + recursive_fib(n - 2));
    }
}*/

long long int Sequences_rfibo(long long int number){
    if (number == 0){
        return 0;
    }
    else if(number == 1){
        return 1;
    }
    else{
        return Sequences_rfibo(number - 1) + Sequences_rfibo(number - 2);
    }
}


#undef Sequences_IMPORT
#undef EXTERN
#endif /* Sequences_h */
>>>>>>> e94102e9b652f269c770d77c8267559b161b52fd
