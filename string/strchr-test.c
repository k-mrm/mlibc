#include "string.h"

int main(void) {
    char a[] = "aaaabaaaa";
    char *res = strchr(a, 'b');
    if(!res) {
        return 128;
    }
    return res - a;
}
