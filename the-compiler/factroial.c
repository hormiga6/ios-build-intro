#include <stdio.h>

int factrial(int x){
  if (x > 1) return x * factrial(x-1);
  else return 1;
}

int main() {
  printf("factrial 10: %d\n", factrial(10));
}
