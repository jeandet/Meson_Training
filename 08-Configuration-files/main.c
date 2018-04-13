#include <stdio.h>
#include "config.h"

int main(int argc, char** argv)
{

#ifdef SIZEOF_INT
    printf ("SIZEOF_INT %d\n", SIZEOF_INT);
#endif
#ifdef HAVE_STRING_H
    printf ("HAVE_STRING_H\n");
#endif
#ifdef HAVE_MEMORY_H
    printf ("HAVE_MEMORY_H\n");
#endif
#ifdef HAVE_LIMITS_H
    printf ("HAVE_LIMITS_H\n");
#endif
#ifdef HAVE_SYSLOG_H
    printf ("HAVE_SYSLOG_H\n");
#endif
#ifdef HAVE_MMAP
    printf ("HAVE_MMAP\n");
#endif


    return 0;
}

