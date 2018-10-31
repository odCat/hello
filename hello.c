#include "hello.h"

int main (void)
{
    setlocale (LC_ALL, "");
    bindtextdomain ("hello", getenv("PWD"));
    textdomain ("hello");

    printf (_("Hello, World!\n"));

    return 0;
}
