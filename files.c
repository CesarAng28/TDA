//
//  files.c
//  
//
//  Created by Cesar Angeles on 07/09/2020.
//

#include <stdio.h>

#define files_IMPORT
#include "files.h"





FILE * file_new(char *name, char *mode){
    FILE * my_file = NULL;
    
    my_file = fopen(name, mode);
    
    if (my_file == NULL){
        puts("FILE OPEN ERROR");
        return NULL;
    }else
        return my_file;
}


void file_num_write(FILE * file,size_t columns, long double buff[][columns], size_t rows){
    size_t row, column = 0;
    
    for(row = 0; row < rows; row ++){
        for(column = 0; column < columns; column ++){
            fprintf(file, "%Lf\t", buff[row][column]);
        }
        fprintf(file, "\n");
    }
}
