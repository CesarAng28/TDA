//
//  time_test_fibo.c
//  
//
//  Created by Cesar Angeles on 07/09/2020.
//



#include <stdio.h>
#include <time.h>



#include "Sequences.h"
#include "files.h"
#include "time_test_fibo.h"

int main(void){
    
    long long int value = 0;
    int index = 0;
    clock_t start, stop;
    double cpu_time = 0;
    double mean = 0;
    FILE * record = NULL;
    long double buffer[OBSERVATIONS][VALUES] = {0};
    size_t obs = 0;
    
    record = file_new("FIBO_TIME.dat","w");
    
    for(obs = 0; obs < OBSERVATIONS; obs ++) {
        printf("%zu\n", obs);
        
        start = clock();
        for (index = 0; index <= STATISTIC; index ++){
            Sequences_rfibo(obs);
        }
        stop = clock();
        
        cpu_time = ((double)(stop-start)) /CLOCKS_PER_SEC / STATISTIC;
        buffer[obs][INDEX] = obs;
        buffer[obs][RECURSIVE] = cpu_time;
        printf("Recursive Fibo time %f s\t", cpu_time);
        
        start = clock();
        for (index = 0; index <= STATISTIC; index ++){
            Sequences_sfibo(obs);
        }
        stop = clock();
        
        cpu_time = ((double)(stop-start)) /CLOCKS_PER_SEC / STATISTIC;
        buffer[obs][ITERATIVE] = cpu_time*1e3;
        printf("Sequential Fibo time %f ms\n", cpu_time*1e3);
    }
    
    file_num_write(record, VALUES, buffer, OBSERVATIONS);
    fclose(record);
    
}