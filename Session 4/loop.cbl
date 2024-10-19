       IDENTIFICATION DIVISION.
       PROGRAM-ID. ProductList.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-PRODUCT-NAME        PIC X(30).
       01 WS-PRODUCT-PRICE       PIC 9(5)V99.
       01 WS-TOTAL-PRICE         PIC 9(7)V99 VALUE 0.
       01 WS-COUNTER             PIC 9(2) VALUE 1.
       01 WS-NUMBER-OF-PRODUCTS  PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCESS.
           DISPLAY "How many products?".
           ACCEPT WS-NUMBER-OF-PRODUCTS.

           PERFORM VARYING WS-COUNTER FROM 1 BY 1
            UNTIL WS-COUNTER > WS-NUMBER-OF-PRODUCTS
             DISPLAY "Name of product no. " WS-COUNTER ": "
             ACCEPT WS-PRODUCT-NAME
             DISPLAY "Price of " WS-PRODUCT-NAME ": "
             ACCEPT WS-PRODUCT-PRICE

             COMPUTE WS-TOTAL-PRICE = WS-TOTAL-PRICE + WS-PRODUCT-PRICE
           END-PERFORM.

           DISPLAY "Total price: " WS-TOTAL-PRICE.
           STOP RUN.
