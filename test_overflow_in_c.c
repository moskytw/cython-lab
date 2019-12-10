#include <stdio.h>
#include <assert.h>

int main(int argc, const char *argv[]) {

    assert(sizeof(int) == 4);
    printf("sizeof int -> %lu\n", sizeof(int));
    // -2147483648 ~ 2147483647 if 32-bit int

    int i = 2147483647;
    assert(i == 2147483647);
    printf("i -> %d\n", i);

    i += 1;
    assert(i == -2147483648);
    printf("i -> %d\n", i);

    return 0;

}
