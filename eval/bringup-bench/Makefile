define HELP_TEXT
Please choose one of the following targets:
  run-tests      - clean, build, and test all benchmarks for the specified TARGET mode (host,standalone,simple)
  all-clean      - clean all benchmark directories for all TARGET modes
  spike-build    - build RISC-V Spike simulator extensions for bringup-bench

Within individual directories, the following Makefile targets are also available:
  clean          - delete all generated files
  build          - build the binary
  test           - run the standard test on the binary

Note that benchmark builds must be parameterized with the build MODE, such as:
  TARGET=host       - build benchmarks to run on a Linux host
  TARGET=standalone - build benchmarks to run in standalone mode (a virtual bare-metal CPU)
  TARGET=simple     - build benchmarks to run on the RISC-V Simple_System simulation testing environment

Example benchmark builds:
  make TARGET=host clean build test
  make TARGET=standalone build
  make TARGET=simple clean
  make all-clean
  make TARGET=simple run-tests
endef

export HELP_TEXT

error:
	@echo "$$HELP_TEXT"

#
# END of user-modifiable variables
#
BMARKS = checkers lz-compress spirograph skeleton dhrystone shortest-path kadane longdiv regex-parser satomi weekday grad-descent indirect-test bubble-sort quaternions totient heapsort gcd-list fuzzy-match parrondo pi-calc rabinkarp-search c-interp murmur-hash strange minspan graph-tests ackermann knights-tour audio-codec spelt2num distinctness bloom-filter cipher pascal avl-tree kepler priority-queue frac-calc banner simple-grep anagram mandelbrot nr-solver quine max-subseq k-means topo-sort rho-factor fft-int tiny-NN flood-fill boyer-moore-search life fy-shuffle qsort-demo mersenne knapsack primal-test sieve natlog rle-compress blake2b donut hanoi vectors-3d
OPT_CFLAGS = -O0
TARGET_CC = clang
TARGET_AR = ar
TARGET_CFLAGS = -DTARGET_HOST -arch arm64 
TARGET_LIBS =
TARGET_SIM =
TARGET_DIFF = diff
TARGET_EXE = $(PROG).host
TARGET_CLEAN =
TARGET_BMARKS = $(BMARKS)
TARGET_CONFIGURED = 1
CFLAGS = -Wall $(OPT_CFLAGS) -Wno-strict-aliasing $(TARGET_CFLAGS) $(LOCAL_CFLAGS)
OBJS = $(LOCAL_OBJS) ../target/libtarg.o
__LIBMIN_SRCS = libmin_abs.c libmin_acos.c libmin_asin.c libmin_atan.c libmin_atof.c \
  libmin_atoi.c libmin_atol.c libmin_ctype.c libmin_exp.c \
  libmin_fabs.c libmin_fail.c libmin_floor.c libmin_getopt.c libmin_malloc.c libmin_mclose.c \
  libmin_memcmp.c libmin_memcpy.c libmin_memmove.c libmin_memset.c libmin_meof.c libmin_mgetc.c \
  libmin_mgets.c libmin_mopen.c libmin_mread.c libmin_msize.c libmin_pow.c libmin_printf.c \
  libmin_putc.c libmin_puts.c libmin_qsort.c libmin_rand.c libmin_rempio2.c libmin_scalbn.c \
  libmin_scanf.c libmin_sincos.c libmin_sqrt.c libmin_strcat.c libmin_strchr.c libmin_strcmp.c \
  libmin_strcpy.c libmin_strcspn.c libmin_strdup.c libmin_strlen.c libmin_strncat.c libmin_strncmp.c \
  libmin_strncpy.c libmin_strpbrk.c libmin_strrchr.c libmin_strspn.c libmin_strstr.c libmin_strcasestr.c \
  libmin_strtok.c libmin_strtol.c libmin_success.c libmin_strncasecmp.c
LIBMIN_SRCS = $(addprefix ../common/,$(basename $(__LIBMIN_SRCS)))
LIBMIN_OBJS = $(addprefix ../common/,$(addsuffix .o,$(basename $(__LIBMIN_SRCS))))

LIBS = ../common/libmin.a


############################ NEW BUILD ############################
build: $(TARGET_EXE)

# Link libtarget.o, libmin.a, local_objects into a single executable
$(TARGET_EXE): $(LOCAL_OBJS) ../common/libmin.a ../target/libtarg.o
	$(TARGET_CC) $(CFLAGS) -o $@ $^  

# Compile .s to .o (assembly to object)
%.o: %.s
	$(TARGET_CC) $(CFLAGS) -o $@ -c $<  

# create a static library out of libmin as libmin.a
../common/libmin.a: $(addprefix ../common/,$(LIBMIN_OBJS))
	$(TARGET_AR) rcs $@ $^ 

# Compilation rules for limited set of .c files 
../common/%.o: ../common/%.c
	$(TARGET_CC) $(CFLAGS) -I../common/ -I../target/ -o $@ -c $<

# Compilation rules for target-specific .c files
../target/libtarg.o: ../target/libtarg.c
	$(TARGET_CC) $(CFLAGS) -I../common/ -I../target/ -o $@ -c $<


############################### CLEAN ###############################
clean:
	rm -f $(PROG).host $(PROG).macos $(PROG).sa $(PROG).elf *.o ../common/*.o ../target/*.o ../common/libmin.a *.d ../common/*.d core mem.out *.log FOO $(LOCAL_CLEAN) $(TARGET_CLEAN)

run-tests:
ifeq ($(TARGET_CONFIGURED), 0)
	@echo "'run-tests' command requires a TARGET definition." ; \
	echo "" ; \
	echo "$$HELP_TEXT"
else
	@SUCCESS_COUNT=0 ; \
	FAILURE_COUNT=0 ; \
	TOTAL_COUNT=0 ; \
	for _BMARK in $(TARGET_BMARKS) ; do \
	  TOTAL_COUNT=$$((TOTAL_COUNT+1)) ; \
	  cd $$_BMARK ; \
	  echo "--------------------------------" ; \
	  echo "Running "$$_BMARK" in TARGET="$$TARGET ; \
	  echo "--------------------------------" ; \
	  if timeout 30s $(MAKE) TARGET=$(TARGET) clean build test ; then \
	    echo "SUCCESS: "$$_BMARK ; \
	    SUCCESS_COUNT=$$((SUCCESS_COUNT+1)) ; \
	  else \
	    echo "FAILURE: "$$_BMARK ; \
	    FAILURE_COUNT=$$((FAILURE_COUNT+1)) ; \
	  fi ; \
	  cd .. ; \
	done ; \
	echo "--------------------------------" ; \
	echo "SUMMARY:" ; \
	echo "Total benchmarks: $$TOTAL_COUNT" ; \
	echo "Succeeded: $$SUCCESS_COUNT" ; \
	echo "Failed: $$FAILURE_COUNT" ; \
	ACCURACY=$$(echo "scale=2; $$SUCCESS_COUNT / $$TOTAL_COUNT * 100" | bc) ; \
	echo "Accuracy: $$ACCURACY%" ; \
	echo "--------------------------------"
endif

clean-all all-clean:
	@for _BMARK in $(BMARKS) ; do \
	  for _TARGET in host macos standalone simple spike ; do \
	    cd $$_BMARK ; \
	    echo "--------------------------------" ; \
	    echo "Cleaning "$$_BMARK" in TARGET="$$_TARGET ; \
	    echo "--------------------------------" ; \
	    $(MAKE) TARGET=$$_TARGET clean ; \
	    cd .. ; \
	  done \
	done

spike-build:
	$(MAKE) -C target clean build
