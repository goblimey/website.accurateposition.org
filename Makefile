# Makefile to create a tree of web pages from a local tree of m4 templates.
#
#     make all
#
# builds the pages from the templates.

# The destination.
webRoot=/var/www/html

# Included files.
includes=leader.m4.html trailer.m4.html definitions.m4

all: ${webRoot}/index.html stylesheets projects gnss

${webRoot}/index.html: ${includes}

${webRoot}/%.html: %.m4.html ${includes}
	m4 $< > $@

stylesheets:
	mkdir -p ${webroot}/stylesheets
	cd stylesheets; make

projects:
	mkdir -p ${webroot}/projects
	cd projects; make

gnss:
	mkdir -p ${webroot}/gnss
	cd gnss
	make

