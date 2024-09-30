* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1803_SYNCHK .
BADI_NAME BADICLASSPOOL_SYNTAX_CHECK .
METHOD ON_BADI_EVENT_SYNTAX_CHECK_KO2 .
  WRITE: 'specifies that the use of TOUPPER or TOLOWER is also safe in multilingual systems'. "#EC TRANSLANG     
            
ENDMETHOD.