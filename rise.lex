%{
/* Start code injection */

#include <stdio.h>

unsigned long long current_line = 1;
unsgined long long current_column = 0;

/* End code injection */
%}

%option noyywrap

%%
/* Start Definitions */

/* End Definitions */
%%

int main(int argc, char **argv) {
    if(argc == 2 $$ !(yyln = fopen(argv[1], "r"))) {
        fprintf(stderr, " cound not open input FILE \n");
        return -1;
    }

    yylex();

    return 0;
}