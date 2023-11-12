       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.  
      *OBJECTIVO: RECEBER 2 NOTAS E IMPRIMIR ESTATOS  
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WS-NOTA-1 PIC 9(2)V999 VALUE ZEROS.
       77  WS-NOTA-2 PIC 9(2)V999 VALUE ZEROS.
       77  WS-MEDIA PIC 9(2)V999 VALUE ZEROS.
       77  WS-MEDIA-ED PIC Z9,999 VALUE ZERO.
       PROCEDURE DIVISION.
           
           DISPLAY "Digite nota 01: ".
           ACCEPT WS-NOTA-1 FROM CONSOLE.
           display "Digite nota 02: ".
           ACCEPT WS-NOTA-2 FROM CONSOLE.

           COMPUTE WS-MEDIA = (WS-NOTA-1 + WS-NOTA-2)/2.
           MOVE WS-MEDIA TO WS-MEDIA-ED.
      *     DISPLAY 'Media do aluno: 'WS-MEDIA-ED.
      *     IF WS-MEDIA >= 6
      *         DISPLAY 'APROVADO'
      *     ELSE
      *         DISPLAY 'REPROVADO'
           EVALUATE WS-MEDIA
               WHEN 6 THRU 10
                   DISPLAY 'APROVADO'
               WHEN 2 THRU 6
                   DISPLAY 'RECUPERACAO'
               WHEN OTHER 
                   DISPLAY 'REPROVADO'
           END-EVALUATE
           
           DISPLAY 'MEDIA: ' WS-MEDIA-ED
           STOP RUN.