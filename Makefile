OBJ = hello.o

all:
	$(MAKE) -C src
	$(MAKE) -C po

.PHONY : clean
clean :
	$(MAKE) -C src clean
	$(MAKE) -C po clean

.PHONY : install
install :
	cp ./hello /usr/local/bin/hello
