#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  int i;

  
  for(i = 1; i < argc; i++) {
    printf(1, "%s", argv[i]);
    if (i + 1 < argc) { 
      printf(1, " ");
    }
  }

  printf(1, " ");

  
  for(i = 1; i < argc; i++) {
    printf(1, "%s", argv[i]);
    if (i + 1 < argc) {  
      printf(1, " ");
    }
  }

  printf(1, "\n");
  
  exit();
}

