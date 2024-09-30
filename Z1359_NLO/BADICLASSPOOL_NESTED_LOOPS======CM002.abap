* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
BADI_NAME BADICLASSPOOL_NESTED_LOOPS .
method CLASS_CONSTRUCTOR.       
  LOOP AT authors.
  AT FIRST.
     WRITE: / 'SY-SUBRC =', SYSUBRC.
  
     WHILE SY-SUBRC = 0.       
        
        DO 2 TIMES.
           WRITE: / 'SY-SUBRC=', SY-SUBRC.
        ENDDO. 
        
     ENDWHILE.                
  ENDAT.
  ENDLOOP.           
   
ENDMETHOD.
  