//
// Created by youssef bouthelja on 26/01/2025.
//
#include <stdio.h>

#include "exporting.h"
void exporting_passwords(char pwdtable[10][10], int *number_of_passwords) {
    FILE *fichier = NULL;
    fichier = fopen("passwords.txt", "w");
    if (fichier != NULL) {
        for (int i = 0; i < *number_of_passwords; i++) {
            fprintf(fichier, "%s\n", pwdtable[0][i]);
            fprintf(fichier, "%s\n", pwdtable[1][i]);
        }
        fclose(fichier);
    }
}