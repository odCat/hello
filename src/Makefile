OBJ = hello.o

hello : hello.o
	cc -o ../hello $(OBJ)

hello.o : hello.h

.PHONY : clean
clean :
	rm a.exe a.out hello ../hello $(OBJ)
