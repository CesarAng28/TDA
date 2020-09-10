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
