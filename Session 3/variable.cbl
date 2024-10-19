       IDENTIFICATION DIVISION.
       PROGRAM-ID. SimpleVariable.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME PIC A(20) VALUE 'Duke'.
       01 WS-AGE  PIC 9(2) VALUE 32.
       PROCEDURE DIVISION.
       Main-Process.
           DISPLAY 'Name: ' WS-NAME.
           DISPLAY 'Age: ' WS-AGE.
           STOP RUN.
