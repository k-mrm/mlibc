#include "stdio.h"
#include "string.h"

char *strchr(const char *s, int c) {
    while(*s++) {
        if(*s == c) return (char *)s;
    }
    return NULL;
}
