#include <stdio.h>

void do_math(int x)
{
    return x + 5;
}

int main(void)
{
    printf("%d\n", do_math(5));
    return 0;
}
