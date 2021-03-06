#include <stdio.h>
#include <stdlib.h>
#include "main.h"
#include "math/math.h"

int main(int argc, char *argv[]) {
  if (argc < 3) {
    printf("version: %d. %d\n", VERSION_MAJOR, VERSION_MINOR);
    printf("usage: %s 1 2\n calculate two integer add.\n", argv[0]);
    return 1;
  }

  int int1 = atoi(argv[1]);
  int int2 = atoi(argv[2]);
  int sum = add(int1, int2);
  
  #if defined (HAVE_POW) 
      printf("系统提供函数pow() \n");
  #endif

  printf("%d and %d is %d\n", int1, int2, sum);
  return 0;
}
