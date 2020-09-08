//
//  files.h
//  
//
//  Created by Cesar Angeles on 07/09/2020.
//

#ifndef files_h
#define files_h

#include <stdio.h>

#ifdef files_IMPORT
    #define EXTERN
#else
    #define EXTERN extern
#endif


/* files.h -- Function prototypes */

/**
 * Instanciates a new file pointer identified via its name and mode.
 * @param
 *  name (char *):
 *      Name of the file
 *  mode (char *):
 *      Mode of file to be opened {r, rb, a, ab, w, wb}
 *
 * @return FILE * opened_file.
*/
EXTERN FILE * file_new(char *name, char *mode);



/**
 * Writes a bidimensional buffer array into a file.
 * @param
 *  file (FILE *):
 *      Storage file
 *  columns (size_t ):
 *      length of the buffer array
 *  buff [ ][columns] (long double):
 *      RAM matrix
 *  rows (size_t):
 *      width of the storage buffer
 *
 * @return void.
*/

EXTERN void file_num_write(FILE * file, size_t columns, long double buff[] [columns], size_t rows);

#undef files_IMPORT
#undef EXTERN



#endif /* files_h */
