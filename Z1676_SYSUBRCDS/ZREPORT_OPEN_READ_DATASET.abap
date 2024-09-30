* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1676_SYSUBRCDS .

REPORT ZREPORT_OPEN_READ_DATASET.

********************* events *****************************
* Events do not test SY-SUBRC fir OPEN and READ, so failed

   DATA: file     TYPE string  VALUE 'test.dat',
         result   TYPE string.

INITIALIZATION.
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   READ DATASET file INTO RESULT
   WHILE SY-SUBRC = 0.
      READ DATASET file INTO result.
      WRITE: / result.
   ENDWHILE.
   
   CLOSE DATASET file.
  
START-OF-SELECTION.
   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   IF SY-SUBRC <> 0.
     EXIT.
   ENDIF.
   
   DO 2 TIMES.
     READ DATASET file INTO result.
     WRITE: / result.
   ENDDO.
   
   CLOSE DATASET file.

*************** forms *******************
* Form do not test SY-SUBRC
FORM FRM_OPEN_READ_DATASET_KO1.

   OPEN DATASET file FOR INPUT IN TEXT MODE ENCODING DEFAULT.
   
   DO 2 TIMES.
     READ DATASET file INTO result.
     WRITE: / result.
   ENDDO. 
   
   CLOSE DATASET file.
ENDFORM.

*
* Forms test SY-SUBRC

FORM FRM_AUTHORITYCHECK_OK1.
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
  
ENDFORM.