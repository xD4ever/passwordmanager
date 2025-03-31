A simple password manager written in C.
Features
Add a new password
Edit an existing password
Delete a password
View all passwords
Search for a specific password
Generate a new password
Usage
Compile and run the program:
bash
Copy
gcc -o password_manager main.c
./password_manager
Commands
1: Add a new password
2: Edit an existing password
3: Delete a password
4: View all passwords
5: Search for a specific password
6: Generate a new password
Code Explanation
what_to_do()
Prompts the user to select an action.
add_a_pwd()
Adds a new password to the password table.
edit_a_pwd()
Edits an existing password in the password table.
delete_a_pwd()
Deletes a password from the password table.
view_all()
Displays all stored passwords.
search_a_pwd()
Searches for a specific password by login.
pwdGeneration()
Generates a random password of a specified length.
main()
The main function that handles user input and calls the appropriate functions.
License
MIT License
