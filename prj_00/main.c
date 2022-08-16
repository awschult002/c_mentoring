#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    int loop_cnt = (argc > 1) ? atoi(argv[1]) : argc;

    while(loop_cnt--)
        puts("Hello World!");

    return 0;
}
