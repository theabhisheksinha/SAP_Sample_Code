* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1359_NLO .
CLASSPOOL_NAME CLASSPOOL_NESTED_LOOPS .

METHOD ON_EVENT_NESTED_LOOPS_KO2 .
  LOOP AT authors.
  AT FIRST.
     WRITE: / 'SY-SUBRC =', SYSUBRC.
  ENDAT.
  AT LAST.        
     LOOP AT titles.
     AT FIRST.
        WRITE: / 'SY-SUBRC =', SYSUBRC.
     ENDAT.
     AT LAST.
           
        LOOP AT titleauthor.
        AT FIRST.
           WRITE: / 'SY-SUBRC =', SY-SUBRC.
        ENDAT.
        AT LAST.
           WRITE: / 'SY-SUBRC =', SY-SUBRC.
        ENDAT.
        ENDLOOP.
           
     ENDAT.
     ENDLOOP. 
                     
  ENDAT.
  ENDLOOP.
ENDMETHOD.
