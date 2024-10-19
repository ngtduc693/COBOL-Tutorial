       IDENTIFICATION DIVISION.
       PROGRAM-ID. LoginCheck.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-USERNAME PIC X(20).
       01 WS-PASSWORD PIC X(20).
       01 WS-STORED-USERNAME PIC X(20) VALUE 'Duke'.
       01 WS-STORED-PASSWORD PIC X(20) VALUE 'HjhXhxw8-P]wY4;'.

       PROCEDURE DIVISION.
       Main-Process.
           DISPLAY 'Enter your username: '.
           ACCEPT WS-USERNAME.
           DISPLAY 'Enter your password: '.
           ACCEPT WS-PASSWORD.
           IF WS-USERNAME = WS-STORED-USERNAME AND
              WS-PASSWORD = WS-STORED-PASSWORD
               DISPLAY 'Login successful! Welcome, ' WS-USERNAME '!'
           ELSE
               DISPLAY 'Invalid username or password!'.
           STOP RUN.
