#!/usr/bin/make
.PHONY: update_translations cleanall

all: update_translations

bin/pip:
	python3 -m venv .

bin/buildout: bin/pip buildout.cfg
	bin/pip install -I -r requirements.txt

bin/i18ndude: bin/buildout
	bin/buildout

update_translations: bin/i18ndude
	bin/develop up -v
	./update.sh

cleanall:
	rm -fr develop-eggs downloads eggs parts .installed.cfg lib lib64 include bin .mr.developer.cfg local share
