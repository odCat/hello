OBJ = hello.o

hello : hello.o
	cc -o hello $(OBJ)

hello.o : hello.h

po/hello.pot : hello.c
	xgettext --keyword=_ --output=po/hello.pot hello.c

po/ro.po : po/hello.pot

.PHONY : clean
clean :
	-rm a.exe a.out hello $(OBJ) po/*.mo
