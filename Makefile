CC := gcc
CFLAGS = -Wall -Wextra -I ./include/ -g
OBJS = strchr.o strchr-test.o
PROGRAM = strchr
.SUFFIXES: .c .o
.PHONY: clean

strchr: strchr.o strchr-test.o
	$(CC) $(CFLAGS) -o $@ $^
%.o : string/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(PROGRAM)
