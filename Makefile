CC = gcc
CFLAGS = -w -m32 -mpreferred-stack-boundary=2 -g
DBFLAGS = -ggdb

SOURCES = demo1.c demo2.c demo3.c demo4.c
EXECUTABLES = ${SOURCES:.c=}
DEBUGS =  ${SOURCES:.c=.dSYM}


default: ${EXECUTABLES}

debug: ${DEBUGS}

${EXECUTABLES}: 
	${CC} ${CFLAGS} ${@:=.c} -o $@ 

${DEBUGS}:
	${CC} ${CFLAGS} ${DBFLAGS} ${@:.dSYM=.c} -o ${@:.dSYM=}

clean: 
	rm ${EXECUTABLES} 
	rm -rf ${DEBUGS} 

