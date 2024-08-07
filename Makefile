# Makefile to create a tree of web pages from a local tree of m4 templates.
#
#     make all
#
# builds the pages from the templates.

# The destination.
webRoot=/var/www/html

# Included files.
includes=leader.m4.html trailer.m4.html definitions.m4

all: ${webRoot}/index.html ${includes} stylesheets projects gnss downloads

${webRoot}/index.html: ${includes}

${webRoot}/%.html: %.m4.html ${includes}
	m4 $< > $@

stylesheets:
	mkdir -p ${webRoot}/stylesheets

projects:
	mkdir -p ${webRoot}/projects

gnss:
	mkdir -p ${webRoot}/gnss

downloads:
	mkdir -p ${webRoot}/downloads

