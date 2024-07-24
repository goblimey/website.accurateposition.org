webRoot=/var/www/html/goblimey

sourceRoot=..

# The name of this directory, eg "projects/gps".
nameOfThisDirectory=downloads/$(notdir $(shell pwd))

# Every generated web page depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4


# The destination for the pages produced, eg /var/www/html/goblimey/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@
