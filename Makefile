
hello: hello.o
	cc -o hello hello.o

hello.o: hello.c hello.h
	cc -c hello.c


po/hello.pot: hello.c
	xgettext --keyword=_ --output=po/hello.pot hello.c

po/ro.po: po/hello.pot

clean:
	rm a.exe a.out hello *.o po/*.mo
