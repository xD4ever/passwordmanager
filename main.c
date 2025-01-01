#include <stdio.h>
#include <string.h>

int what_to_do(){
    int action;
    printf("What do you want to do (type the number of the action):\n 1.add a new password. \n 2.edit an existing password. \n 3.delete a password.\n 4.consult all passwords. \n 5.search for an existing password.");
    scanf("%d",&action);
    return action;
}

void add_a_pwd(char *pwdtable, int *number_of_passwords) {
    char new_password[20], login[50];
    printf("Enter your login:");
    scanf("%s",login);
    printf("Please enter your password:\n");
    scanf("%s",new_password);
    *((pwdtable) + *number_of_passwords) = login;
    *((pwdtable + 1) + *number_of_passwords) = new_password;
    *number_of_passwords++;
}

void edit_a_pwd(char *pwdtable, int *number_of_passwords) {
    int position = 0;
    char login[50];
    char new_password[20];
    printf("the login for the password:\n");
    scanf("%s",login);
    printf("Please enter the new password:\n");
    scanf("%s",new_password);
    while (strcmp(*(pwdtable + position), login) != 0 && position < *number_of_passwords) {
        position++;
    }
    *((pwdtable) + position) = new_password;
}

void delete_a_pwd(char *pwdtable, int *number_of_passwords) {
    int position = 0;
    char login[50];
    printf("enter the login for the information you want to delete:\n");
    scanf("%s",login);
    while (strcmp(*(pwdtable + position), login) != 0 && position < *number_of_passwords) {
        position++;
    }
    *((pwdtable) + position) = "";//to empty the cell of the login in the table
    *((pwdtable + 1) + position) = "";//to empty the cell of the pwd in the

    //to replace the empty space in the table
    while (position < *number_of_passwords) {
        *((pwdtable) + position) = *((pwdtable) + (position + 1));
        *((pwdtable + 1) + position) = *((pwdtable + 1) + (position + 1));
        position++;
    }
    *number_of_passwords--;
}

void view_all(char *pwdtable, int *number_of_passwords) {
    for (int i = 0; i < *number_of_passwords; i++) {
        printf("%s :\n",*((pwdtable) + i));
        printf("%s :\n",*((pwdtable + 1) + i));
    }
}

void search_a_pwd(char *pwdtable, int *number_of_passwords) {
    int position = 0;
    char login[50];
    printf("enter the login for the information you want to delete:\n");
    scanf("%s",login);
    while (strcmp(*(pwdtable + position), login) != 0 && position < *number_of_passwords) {
        position++;
    }
    printf("%s :\n",*((pwdtable) + position));
    printf("%s :\n",*((pwdtable + 1) + position));
}

int main(void) {
    char login_and_pwd[10][10] = {{"youssef","XD4ever"},
                                    {"hello", "yessir"}};
    int number_of_passwords = strlen(login_and_pwd);
    switch (what_to_do()) {
        //to add a new password
        case 1:add_a_pwd(login_and_pwd, &number_of_passwords);break;
        //to edit a spesific password
        case 2:edit_a_pwd(login_and_pwd, &number_of_passwords);break;
        //to delete the login info for the account
        case 3:delete_a_pwd(login_and_pwd, &number_of_passwords);break;
        //to see all the stored passwords
        case 4:view_all(login_and_pwd, &number_of_passwords);break;
        //to find a specific pwd
        case 5:search_a_pwd(login_and_pwd, &number_of_passwords);break;
        default:printf("Wrong input");break;
    }
    return 0;
}