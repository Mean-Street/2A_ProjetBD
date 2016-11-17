all: application run

application:
	javac -d bin -classpath bin/ -sourcepath src/ src/Application.java

run: application
	java -classpath bin:bin/ojdbc7.jar Application

doc:
	javadoc -docencoding utf8 -encoding utf8 -charset utf8 -private -d doc/ -sourcepath src/ -classpath gui.jar -subpackages chemin simulation io robot enumerations

.PHONY: doc run
