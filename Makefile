
hello: hello.c hello.h
	gcc -o hello hello.c

po/hello.pot: hello.c
	xgettext --keyword=_ --output=po/hello.pot hello.c

po/ro.po: po/hello.pot

clean:
	rm a.exe a.out hello *.o po/*.mo
