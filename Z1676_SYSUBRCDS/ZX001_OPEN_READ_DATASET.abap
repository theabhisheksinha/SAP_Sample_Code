* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1676_SYSUBRCDS .
USER_EXIT_NAME ZX001_OPEN_READ_DATASET .

MODULE MOD_OPEN_READ_DATASET_KO1 OUTPUT.
   DATA: file     TYPE string  VALUE 'test.dat',
         result   TYPE string.
         
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   READ DATASET file INTO RESULT
   WHILE SY-SUBRC = 0.
      READ DATASET file INTO result.
      WRITE: / result.
   ENDWHILE.
   
   CLOSE DATASET file.
   
ENDMODULE. 

MODULE MOD_OPEN_READ_DATASET_KO2 OUTPUT.
   DATA: file     TYPE string  VALUE 'test.dat',
         result   TYPE string.
         
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   IF SY-SUBRC <> 0.
     EXIT.
   ENDIF.
   
   DO 2 TIMES.
     READ DATASET file INTO result.
     WRITE: / result.
   ENDDO.
   
   CLOSE DATASET file.
   
ENDMODULE. 

MODULE MOD_OPEN_READ_DATASET_KO3 OUTPUT.
   DATA: file     TYPE string  VALUE 'test.dat',
         result   TYPE string.
         
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   DO 2 TIMES.
     READ DATASET file INTO result.
     WRITE: / result.
   ENDDO. 
   
   CLOSE DATASET file.
   
ENDMODULE.

MODULE MOD_OPEN_READ_DATASET_OK1 OUTPUT.
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   IF SY-SUBRC <> 0.
     EXIT.
   ELSE
     READ DATASET file INTO result. 
    
     WHILE SY-SUBRC = 0.
        READ DATASET file INTO result.
        WRITE: / result.
     ENDWHILE.
   
   ENDIF.
   
   CLOSE DATASET file.
   
ENDMODULE.
  