
LOCAL_CFLAGS = -I../common/ -I../target/
LOCAL_LIBS=
LOCAL_OBJS=checkers.o consttypes.o functions.o

PROG=checkers

include ../Makefile

test: $(TARGET_EXE)
	-$(TARGET_SIM) ./$(TARGET_EXE) > FOO 
	$(TARGET_DIFF) FOO checkers.out
	rm -f FOO

