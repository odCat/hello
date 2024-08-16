PO = de.po fr.po ro.po
MO  = de.mo fr.mo ro.mo

all: $(MO)

de.mo: de.po
	msgfmt --output-file=$@ $^

fr.mo: fr.po
	msgfmt --output-file=$@ $^

ro.mo: ro.po
	msgfmt --output-file=$@ $^

de.po: hello.pot
	msgmerge $@ $^ --output-file=$@
	#msginit --locale=de -i hello.pot -o $@

fr.po: hello.pot
	msgmerge $@ $^ --output-file=$@
	#msginit --locale=fr -i hello.pot -o $@

ro.po: hello.pot
	msgmerge $@ $^ --output-file=$@
	#msginit --locale=ro_RO -i hello.pot -o $@

hello.pot: ../src/hello.c
	xgettext --keyword=_ --output=hello.pot ../src/hello.c

clean:
	-rm -f $(MO)

.PHONY: all clean
