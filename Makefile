hello_jenkins: hello_jenkins.o
	cc -o hello_jenkins hello_jenkins.o

hello_jenkins.o: hello_jenkins.c
	cc -o hello_jenkins.o -c hello_jenkins.c
