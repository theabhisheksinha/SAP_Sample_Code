* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1676_SYSUBRCDS .
FUNCTION-POOL FPOOL_OPEN_READ_DATASET .

BEGIN OF FUNCTION PARAMETERS FCT_OPEN_READ_DATASET_KO1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_OPEN_READ_DATASET_KO1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
    DATA: file     TYPE string  VALUE 'test.dat',
         result   TYPE string.
         
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   READ DATASET file INTO RESULT
   WHILE SY-SUBRC = 0.
      READ DATASET file INTO result.
      WRITE: / result.
   ENDWHILE.
   
   CLOSE DATASET file.
  
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_OPEN_READ_DATASET_KO2.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_OPEN_READ_DATASET_KO2.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
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
   
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_OPEN_READ_DATASET_KO3.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_OPEN_READ_DATASET_KO3.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
   DATA: file     TYPE string  VALUE 'test.dat',
         result   TYPE string.
         
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   DO 2 TIMES.
     READ DATASET file INTO result.
     WRITE: / result.
   ENDDO. 
   
   CLOSE DATASET file.
   
ENDFUNCTION.

BEGIN OF FUNCTION PARAMETERS FCT_OPEN_READ_DATASET_OK1.
EXPORTING VALUE(SY-SUBRC) TYPE I .
END OF FUNCTION PARAMETERS.
FUNCTION FCT_OPEN_READ_DATASET_OK1.
*"----------------------------------------------------------
*" Local interface:
*"  EXPORTING
*"     VALUE(SY-SUBRC)
*"----------------------------------------------------------
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
   
ENDFUNCTION.
