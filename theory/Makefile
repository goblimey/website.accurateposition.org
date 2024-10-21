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
${destination}/2.latitude.longitude.height.html \
${destination}/3.reference.frames.html \
${destination}/4.ecef.html \
${destination}/5.utm.html \
${destination}/6.what.three.words.html \
${includes}

${destination}/%.html: %.m4.html
	m4 -DsourceRoot=${sourceRoot} $< > $@
