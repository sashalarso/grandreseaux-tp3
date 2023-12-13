%%

^interface[ ].*$	{
    BEGIN INTERFACE;
    line = yylineno;
}

(.|\n)	; 

<INTERFACE>^[ ]ip[ ]access-group[ ].*$	{
    access_group_set = 1;
}

<INTERFACE>^!$	{
    BEGIN INITIAL;
    if (access_group_set == 0)
        printf("ip access-group unset for %s\n", filename);
    access_group_set = 0;
}

<INTERFACE>(.|\n)	; 

%%

int main(int argc, char **argv) {

    if (argc > 1) 
    {
        for (int i = 1; i < argc; i++)
        {
            strncpy(filename,argv[i], strlen(argv[i]));
            filename[strlen(argv[i])] = '\0';

            yyin = fopen(argv[i], "r");
            yylex();
            fclose(yyin);
        }
    }
    return 0;
}