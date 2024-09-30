* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
CLASSPOOL_NAME CLASSPOOL_LOOP_INTO .

METHOD ON_EVENT_LOOP_INTO_KO2 .
   LOOP AT tab_titles 
        INTO line_titles.
        AT FIRST.
        WRITE: / 'FIRST'.
        ENDAT.
        AT LAST.
        WRITE: / 'END'.
        ENDAT.
  ENDLOOP.  
ENDMETHOD.
