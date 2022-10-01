#export JAVA_HOME="$CATALINA_BASE/jdk"

export CATALINA_OPTS="$CATALINA_OPTS -Xms1024m"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx2048m"
# run remove.sh scripts if exists
if [ -r "$CATALINA_BASE/bin/remove.sh" ]; then
    . "$CATALINA_BASE/bin/remove.sh"
    rm -f "$CATALINA_BASE/bin/remove.sh"
    # also remove remove.bat script
    rm -f "$CATALINA_BASE/bin/remove.bat"
fi

if [ -d "$CATALINA_BASE/update" ]; then
  	# copy all files from $CATALINA_BASE/update to $CATALINA_BASE
  	cp -R -f "$CATALINA_BASE/update/." "$CATALINA_BASE/"
  	# empty $CATALINA_BASE/update folder
  	rm -rf $CATALINA_BASE/update/*
fi

if [ -r "$CATALINA_BASE/bin/mtg-install.sh" ]; then
	  . "$CATALINA_BASE/bin/mtg-install.sh"
	  rm -f "$CATALINA_BASE/bin/mtg-install.sh"
	  # also remove mtg-install.bat script
    rm -f "$CATALINA_BASE/bin/mtg-install.bat"
fi
