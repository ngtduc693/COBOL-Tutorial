       IDENTIFICATION DIVISION.
       PROGRAM-ID. SimpleAddition.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Number1 PIC 9(4).
       01  Number2 PIC 9(4).
       01  Result PIC 9(4).

       PROCEDURE DIVISION.
       Main-Process.
           DISPLAY "Enter first number (0-9999): "
           ACCEPT Number1
           DISPLAY "Enter second number (0-9999): "
           ACCEPT Number2

           COMPUTE Result = Number1 + Number2
           DISPLAY "The sum of " Number1 " and " Number2 " is " Result
           STOP RUN.
