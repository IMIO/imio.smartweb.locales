#!/usr/bin/make
.PHONY: buildout update_translations cleanall

all: update_translations

bin/buildout: bin/pip buildout.cfg
	bin/pip install -I -r requirements.txt

buildout: bin/buildout
	bin/buildout

bin/pip:
	python3 -m venv .

update_translations: bin/buildout
	bin/develop up -v
	./update.sh

cleanall:
	rm -fr develop-eggs downloads eggs parts .installed.cfg lib lib64 include bin .mr.developer.cfg local share
