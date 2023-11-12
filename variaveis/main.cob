       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.
      *AUTHOR: HERBERT HIPOLITO.
      *29/10/2023.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *77 diz que essa variavel vai ser usada somente nesse programa. 
      * TRES TIPOS: A => SOMENTE ALFABETO, X => ALFANUMERICO,  9 =>.
      * SOMENTE NUMERO.
       77  WRK-NAME PIC X(20) VALUES SPACES. 
       PROCEDURE DIVISION.
           DISPLAY 'type something'.
           ACCEPT WRK-NAME FROM CONSOLE.
           DISPLAY 'Name: 'WRK-NAME(1:5).
           STOP RUN.