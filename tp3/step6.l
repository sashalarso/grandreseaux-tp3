%{
#include <stdio.h>
int count_ip = 0;
int count_any = 0;
%}

%%

ip     { count_ip++; }
any    { count_any++; }
.      ; // Ignorer tous les autres caractères

%%

int main() {
    yyin = fopen("router.unix", "r");

    if (yyin == NULL) {
        perror("Erreur lors de l'ouverture du fichier");
        return 1;
    }

    yylex();

    printf("Nombre de mots 'ip': %d\n", count_ip);
    printf("Nombre de mots 'any': %d\n", count_any);

    fclose(yyin);

    return 0;
}
