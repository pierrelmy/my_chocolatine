#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../includes/my.h"

void redirect_all_std(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(test1, test1, .init = redirect_all_std)
{
    test_function();
    fflush(stdout);
    cr_assert_stdout_eq_str("Hello, World!\n");
}
