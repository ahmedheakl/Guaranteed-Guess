
LOCAL_CFLAGS = -I../common/ -I../target/
LOCAL_LIBS=
LOCAL_OBJS=bloom-filter.o tinybloom.o

PROG=bloom-filter

include ../Makefile

test: $(TARGET_EXE)
	-$(TARGET_SIM) ./$(TARGET_EXE) > FOO 
	$(TARGET_DIFF) FOO bloom-filter.out
	rm -f FOO

