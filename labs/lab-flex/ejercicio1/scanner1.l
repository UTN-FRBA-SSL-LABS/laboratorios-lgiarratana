%pointer
%option noyywrap

%%

 /* ── Reglas ya implementadas ────────────────────────── */

 /* Constante octal: 0 seguido de dígitos octales (o solo 0) */
0[0-7]*         { printf("constante octal: %s\n", yytext); }

 /* Ignorar espacios, tabs y saltos de línea */
[ \t\n]         { }

 /* ── Reglas completadas ─────────────────────────────── */

 /* Constante decimal */
[1-9][0-9]*     { printf("constante decimal: %s\n", yytext); }

 /* Constante hexadecimal */
0[xX][0-9a-fA-F]+  { printf("constante hexadecimal: %s\n", yytext); }

 /* Identificador */
[a-zA-Z_][a-zA-Z0-9_]*  { printf("identificador: %s\n", yytext); }

 /* Cualquier carácter no reconocido */
.               { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}
