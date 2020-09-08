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
EXTERN long long int Sequences_sfibo(long long int n);


/**
 * Returns the value of the fibonacci sequence at index n calculated recursively
 * @param
 *      n (long long int):
 *          Index of the fibonacci sequence
 * @return long long int value
*/
EXTERN long long int Sequences_rfibo(long long int n);


#undef Sequences_IMPORT
#undef EXTERN
#endif /* Sequences_h */
