webRoot=/var/www/html

sourceRoot=..

# The name of this directory, eg "projects".
nameOfThisDirectory=$(notdir $(shell pwd))

# # The destination for the pages produced, eg /var/www/html/projects.
destination=${webRoot}/${nameOfThisDirectory}

# Included files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4

all: ${destination}/index.html \
${destination}/1.coordinates.html \
${destination}/2.gnss.html \
${destination}/3.trimble.html \
${destination}/4.ntrip.html \
${destination}/5.rtcm.html \
${includes}

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@
