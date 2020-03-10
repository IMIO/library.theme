#!/usr/bin/make

grunt-install:
	npm install grunt

grunt-compile:
	./node_modules/grunt/bin/grunt compile

build:
	python3 -m venv .
	bin/pip install -I -r requirements.txt
	bin/buildout
	make grunt-install

cleanall:
	rm -rf bin develop-eggs downloads include lib lib64 parts .installed.cfg .mr.developer.cfg bootstrap.py parts/omelette local share
