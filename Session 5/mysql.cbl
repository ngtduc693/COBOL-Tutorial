       IDENTIFICATION DIVISION.
       PROGRAM-ID. DUKE-CONNECT-MYSQL.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. GNUCOBOL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-COMMAND PIC X(1000).
       01 WS-RETURN-CODE PIC S9(4) COMP.
       01 WS-HOSTNAME PIC X(60) VALUE ''.
       01 WS-PORT PIC 9(6) VALUE 16617.
       01 WS-USERNAME PIC X(10) VALUE ''.
       01 WS-PASSWORD PIC X(30) VALUE ''.
       01 WS-DBNAME PIC X(10) VALUE ''.
       01 WS-CUSTOMER-QUERY PIC X(30) VALUE 'SELECT * FROM customers'.

       PROCEDURE DIVISION.

       STRING
           'mysql '        DELIMITED BY SIZE
           '-h '          DELIMITED BY SIZE
           WS-HOSTNAME    DELIMITED BY SIZE
           ' -P '         DELIMITED BY SIZE
           WS-PORT        DELIMITED BY SIZE
           ' -u '         DELIMITED BY SIZE
           WS-USERNAME    DELIMITED BY SIZE
           ' -p'          DELIMITED BY SIZE
           WS-PASSWORD    DELIMITED BY SIZE
           ' -D '         DELIMITED BY SIZE
           WS-DBNAME      DELIMITED BY SIZE
           ' -e "'        DELIMITED BY SIZE
           WS-CUSTOMER-QUERY DELIMITED BY SIZE
           '"'            DELIMITED BY SIZE
           INTO WS-COMMAND
       END-STRING

       CALL "system" USING WS-COMMAND GIVING WS-RETURN-CODE.

       IF WS-RETURN-CODE = 0
          DISPLAY 'Connected and query executed!'
       ELSE
          DISPLAY 'Failed to execute command, error code: '
          WS-RETURN-CODE
       END-IF.

       STOP RUN.
