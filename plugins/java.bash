
JAVA_HOME=/Library/Java/Home
CATALINA_HOME=/Library/Tomcat/Home
SCALA_HOME=/Library/Scala/Home
CLOJURE_EXT=$HOME/.clojure.d/ext
CLOJURE_OPTS="-Xms32M -Xms128M -server"
JENAROOT=$HOME/bin/Jena-2.6.4
TDBROOT=$HOME/bin/TDB-0.8.10

PATH=$SCALA_HOME/bin:$JENAROOT/bin:$TDBROOT/bin:$PATH

export JAVA_HOME CATALINA_HOME SCALA_HOME CLOJURE_EXT CLOJURE_OPTS JENAROOT TDBROOT
