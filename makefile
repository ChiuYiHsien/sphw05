SHELL = /bin/bash
CC = gcc
CFLAGS = -g
SRC = $(wildcard *.c)
EXE = $(patsubst %.c, %, $(SRC))

all: ${EXE} run_setuid

%:	%.c
	${CC} ${CFLAGS} $@.c -o $@

clean:
	rm ${EXE}

run_setuid:
	sudo chown root preBirthday
	sudo chmod +s preBirthday