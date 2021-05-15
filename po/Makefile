POs = de.po fr.po ro.po
MOs  = de.mo fr.mo ro.mo

.PHONY: all
all: de.mo fr.mo ro.mo

de.mo: de.po
	msgfmt -o $@ de.po

fr.mo: fr.po
	msgfmt -o $@ fr.po

ro.mo: ro.po
	msgfmt -o $@ ro.po

de.po: hello.pot
	#msgmerge $@ hello.pot
	msginit --locale=de -i hello.pot -o $@

fr.po: hello.pot
	#msgmerge ro.po hello.pot
	msginit --locale=fr -i hello.pot -o $@

ro.po: hello.pot
	#msgmerge ro.po hello.pot
	msginit --locale=ro_RO -i hello.pot -o $@

hello.pot: ../hello.c
	xgettext --keyword=_ --output=hello.pot ../hello.c

.PHONY: clean
clean:
	@rm -f *.mo