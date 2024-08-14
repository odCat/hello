#include "hello.h"

int main(void)
{
    setlocale(LC_ALL, "");
    bindtextdomain("hello", "/usr/local/share/locale/");
    textdomain("hello");

    printf(_("Hello, world!\n"));

    return 0;
}
