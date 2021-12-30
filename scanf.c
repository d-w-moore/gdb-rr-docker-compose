#include <unistd.h>
#include <stdio.h>

int main()
{
  int i=0;
  printf("%d> ",(int)getpid());
  fflush(stdout);
  scanf("%d",&i);
  return i;
}
