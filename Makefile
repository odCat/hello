all:
	$(MAKE) -C src
	$(MAKE) -C po

.PHONY : clean
clean :
	$(MAKE) -C src clean
	$(MAKE) -C po clean

install :
	-cp -f ./hello /usr/local/bin/hello
	-cp -f ./po/de.mo /usr/local/share/locale/de/LC_MESSAGES/hello.mo
	-cp -f ./po/fr.mo /usr/local/share/locale/fr/LC_MESSAGES/hello.mo
	-cp -f ./po/ro.mo /usr/local/share/locale/ro/LC_MESSAGES/hello.mo

uninstall :
	-rm -f /usr/local/bin/hello
	-rm -f ./po/de.mo /usr/local/share/locale/de/LC_MESSAGES/hello.mo
	-rm -f ./po/fr.mo /usr/local/share/locale/fr/LC_MESSAGES/hello.mo
	-rm -f ./po/ro.mo /usr/local/share/locale/ro/LC_MESSAGES/hello.mo

.PHONY : clean install unistall
