* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
BADI_NAME BADICLASSPOOL_NESTED_LOOPS .
method IF_BADI_IFPOOL_NESTED_LOOPS~IF_BADI_METH_NESTED_LOOPS_KO1.
  SELECT au~au_lname au~au_fname
    INTO (col_au_lname, col_au_fname) 
    FROM authors AS au
   WHERE au~au_id = 'AAA'.
   
     WHILE SY-SUBRC = 0.
         WRITE: / 'SY-SUBRC =', SYSUBRC.
         WHILE SY-SUBRC = 0.
            WRITE: / 'SY-SUBRC =', SYSUBRC.
            DO 3 TIMES.
              WRITE: / 'SY-SUBRC =', SYSUBRC.
            ENDDO.
         ENDWHILE.
     ENDWHILE.                
         
  ENDSELECT.

ENDMETHOD.
