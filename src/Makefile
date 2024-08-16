override CFLAGS += -Wall -Wextra -Wno-unused-variable -pedantic
OBJ = hello.o

hello : hello.o
	$(CC) -o ../hello $(OBJ) $(CFLAGS)

hello.o : hello.c hello.h

clean :
	-rm a.exe a.out hello ../hello $(OBJ)

.PHONY : clean
