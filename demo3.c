#include <stdio.h>
#include <stdlib.h>

main(){
    char * message = "hidden message 1";
    char *string = malloc(80);

    printf("message at %p\n",message);

    scanf("%s",string);

    printf(string);
}
