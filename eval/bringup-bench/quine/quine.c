#include "libmin.h"
#define B(x)int main(){libmin_puts("#include \"libmin.h\"\n#define B(x)"x"\n#define X(s)S(s)\n#define S(s)#s\nB(X(B(x)))\n");libmin_success();}
#define X(s)S(s)
#define S(s)#s
B(X(B(x)))
