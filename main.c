#include <stdio.h>

extern __int8 rndval();

int main(int argc, char *argv[]) {
    printf("Oracle says: %s\n", rndval() == 1 ? "YES" : "NO");
    return 0;
}