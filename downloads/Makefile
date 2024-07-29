webRoot=/var/www/html

sourceRoot=..

# The name of this directory, eg "projects/gps".
nameOfThisDirectory=downloads

# Every generated web page depends on these files.
includes=${sourceRoot}/leader.m4.html ${sourceRoot}/trailer.m4.html ${sourceRoot}/definitions.m4


# The destination for the pages produced, eg /var/www/html/projects/grpc.
destination=${webRoot}/${nameOfThisDirectory}

all: ${destination}/index.html ${includes}

${destination}/%.html: %.m4.html ${includes}
	mkdir -p ${destination}
	m4 -DsourceRoot=${sourceRoot} $< > $@