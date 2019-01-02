#include <stdio.h>
#include <stdlib.h>
#include "math.h"

int main(int argc, char *argv[]) {
  if (argc < 3) {
    printf("usag: %s 1 2 \n calculate two integer add.\n", argv[0]);
    return 1;
  }
  int int1 = atoi(argv[1]);
  int int2 = atoi(argv[2]);
  int sum = add(int1, int2);
  printf("%d add %d is %d\n", int1, int2, sum);
  return 0;
}
