
LOCAL_CFLAGS=
LOCAL_LIBS=
LOCAL_OBJS=ackermann.o

PROG=ackermann

include ../Makefile

test: $(TARGET_EXE)
	-$(TARGET_SIM) ./$(TARGET_EXE) > FOO 
	$(TARGET_DIFF) FOO ackermann.out
	rm -f FOO