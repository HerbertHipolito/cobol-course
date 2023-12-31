       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.

      *AUTHOR: HERBERT HIPOLITO 
      *29/10/2023
      *RECEBER SALÁRIO E IMPRIMIR FORMATADO.
      * v999 SIMBOLIZA 3 CASAS DECIMAIS
       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       77 WRK-NOME PIC X(20) VALUES SPACES.
       77 WRK-SALARIO PIC 9(6)v999 VALUES ZEROS.
       77 WRK-SALARIO-ED PIC $ZZZ.ZZ9,99 VALUES ZEROS.
      
       PROCEDURE DIVISION.
           
           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.

           MOVE WRK-SALARIO TO WRK-SALARIO-ED.

           DISPLAY 'NOME: ' WRK-NOME. 
           DISPLAY 'SALARIO: 'WRK-SALARIO-ED.

           STOP RUN.
