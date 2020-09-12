CC = gcc
CFLAGS = -I -Wall
DEPS = Sequences.h files.h time_test_fibo.h
OBJ = time_test_fibo.o Sequences.o files.o

%.o : %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

time_test_fibo: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm *.o
